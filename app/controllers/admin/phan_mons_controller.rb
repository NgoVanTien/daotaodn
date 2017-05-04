class Admin::PhanMonsController < Admin::ApplicationController
  def index
    @khoas = Khoa.all
    @chuongtrinhdaotaos = ChuongTrinhDaoTao.all
    @search = Lop.search params[:q]

    if params[:info].present?
      if params[:info][:ten_khoa].present?
        @chuongtrinhdaotaos = ChuongTrinhDaoTao.where(khoa_id: params[:info][:ten_khoa])
        @search = Lop.where(chuong_trinh_dao_tao_id: ChuongTrinhDaoTao.where(khoa_id: params[:info][:ten_khoa])).search params[:q]
        if params[:info][:ten_ctdt].present?
          @search = Lop.where(chuong_trinh_dao_tao_id: ChuongTrinhDaoTao.where(id: params[:info][:ten_ctdt] )).search params[:q]
        end
      end
    end

    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @lops = @search.result.page(params[:page]).per 5

  end

  def show
  end

  def new
    @lop = Lop.find_by(id: params[:lop])
    @chuongtrinhdaotao = @lop.chuong_trinh_dao_tao
    @chitietdaotaos = ChiTietDaoTao.where(chuong_trinh_dao_tao_id: @chuongtrinhdaotao)
    @giaoviens = GiaoVien.where(khoa_id: @chuongtrinhdaotao.khoa)
    @kyhoc = params[:kyhoc]

    @all_phanmon_cualop = PhanMon.where(hocky: @kyhoc, chuong_trinh_dao_tao_id: @chuongtrinhdaotao, lop_id: @lop)
    @all_phanmon_cualop_chuan = PhanMon.select("phan_mon.id, phan_mon.hocky, phan_mon.sotiet, GROUP_CONCAT(giao_vien_id) as ma_giao_vien, phan_mon.chuong_trinh_dao_tao_id, phan_mon.mon_hoc_id, phan_mon.lop_id")
      .joins("INNER JOIN giao_vien on giao_vien.id = phan_mon.giao_vien_id")
      .where("phan_mon.hocky = #{@kyhoc} AND phan_mon.chuong_trinh_dao_tao_id = #{@chuongtrinhdaotao.id} And phan_mon.lop_id = #{@lop.id}")
      .group("phan_mon.mon_hoc_id")

    @all_phanmon_cualop_cachocky = PhanMon.where(chuong_trinh_dao_tao_id: @chuongtrinhdaotao, lop_id: @lop)

    chitietdaotaos_daphanmon = ChiTietDaoTao.where(chuong_trinh_dao_tao_id: @chuongtrinhdaotao, mon_hoc_id: @all_phanmon_cualop_cachocky.pluck(:mon_hoc_id))

    @chitietdaotaos = @chitietdaotaos - chitietdaotaos_daphanmon
  end

  def edit
  end

  def create
    list_mon_hoc = params[:list_mon_hoc]
    lish_thong_tin = params[:list_thong_tin]
    capnhat_phanmon = []
    taomoi_phanmon = []
    capnhat_phanmon_giaovien = []
    taomoi_phanmon_giaovien = []

    if list_mon_hoc.present?
      list_mon_hoc.each do |key, value|

        kiem_tra_phanmon = PhanMon.where(hocky: lish_thong_tin.last,
          chuong_trinh_dao_tao_id: lish_thong_tin.first,
          lop_id: lish_thong_tin.second, mon_hoc_id: value[0])

        nambatdau_cuakhoa = ChuongTrinhDaoTao.find_by(id: lish_thong_tin.first).khoa_hoc.nambatdau.to_date
        ngaybatdau = (nambatdau_cuakhoa + ((lish_thong_tin.last.to_i - 1)*6).month).to_s
        ngayketthuc = (nambatdau_cuakhoa + (lish_thong_tin.last.to_i*6).month).to_s


        if kiem_tra_phanmon.present?
          value[1].tr('[]', '').split(',').map(&:to_i).each do |giaovien|

            kiem_tra_giaovien_monhoc = PhanMon.where(giao_vien_id: giaovien, hocky: lish_thong_tin.last,
              chuong_trinh_dao_tao_id: lish_thong_tin.first,
              lop_id: lish_thong_tin.second, mon_hoc_id: value[0])

            if kiem_tra_giaovien_monhoc.present?
              capnhat_item_giaovien = kiem_tra_giaovien_monhoc.update(sotiet: value[2])
              capnhat_phanmon_giaovien =  capnhat_phanmon_giaovien.push capnhat_item_giaovien.first
            else
              taomoi_item_giaovien = PhanMon.create(ngaybatdau: ngaybatdau, ngayketthuc: ngayketthuc ,
              hocky: lish_thong_tin.last, sotiet: value[2], giao_vien_id: giaovien,
              chuong_trinh_dao_tao_id: lish_thong_tin.first, mon_hoc_id: value[0], lop_id: lish_thong_tin.second)
              taomoi_phanmon_giaovien =  taomoi_phanmon_giaovien.push taomoi_item_giaovien
            end
          end
        else
          value[1].tr('[]', '').split(',').map(&:to_i).each do |giaovien|
            taomoi_item = PhanMon.create(ngaybatdau: ngaybatdau, ngayketthuc: ngayketthuc ,
              hocky: lish_thong_tin.last, sotiet: value[2], giao_vien_id: giaovien,
              chuong_trinh_dao_tao_id: lish_thong_tin.first, mon_hoc_id: value[0], lop_id: lish_thong_tin.second)
            taomoi_phanmon =  taomoi_phanmon.push taomoi_item
          end
        end
      end
    end

    all_phanmon_cualop = PhanMon.where(hocky: lish_thong_tin.last, chuong_trinh_dao_tao_id: lish_thong_tin.first, lop_id: lish_thong_tin.second)
    monhoc_can_xoa = all_phanmon_cualop - (capnhat_phanmon_giaovien + taomoi_phanmon + taomoi_phanmon_giaovien)
    if monhoc_can_xoa.present?
      PhanMon.where(id: monhoc_can_xoa).destroy_all
    end
  end
end
