class Admin::QuyensController < Admin::ApplicationController
  # before_action :load_mon_hoc, only: %i(destroy edit show update)
  # before_action :load_loai_mon_hoc, only: %i(new edit)
  # before_action :load_khoa, only: %i(new edit)
  before_action :load_tai_khoan, only: %i(destroy edit show update)
  before_action :load_giao_vien, only: %i(edit new)

  def index
    @taikhoan_admin = TaiKhoan.where(role: :admin)
    @taikhoan_giaovien = TaiKhoan.where(role: :giangvien)
    @taikhoan_giangvu = TaiKhoan.where(role: :giangvu)
    @taikhoan_vanphong = TaiKhoan.where(role: :vanphong)
  end

  def show
  end

  def new
    @taikhoan = TaiKhoan.new
    @lops = Lop.all
    @khoas = Khoa.all
  end

  def edit
  end

  def create
    if params[:params_khoa].present?
      khoas = Khoa.where(id: params[:params_khoa])
      giaoviens = GiaoVien.where(khoa_id: khoas)
      giaoviens.each do |gv|
        taikhoan_datontai = TaiKhoan.where(giao_vien_id: gv)
        if taikhoan_datontai.present?

        else
          ma_gv = "GV" + (10000 + gv.id).to_s
          email_gv = "gv" + (10000 + gv.id).to_s + "@gmail.com"
          TaiKhoan.create(email: email_gv,name: gv.tengiaovien, username: ma_gv, giao_vien_id:gv.id,
            role: 1, password: "123456", password_confirmation: "123456")
        end
      end
    elsif params[:params_lop].present?
      lops = Lop.where(id: params[:params_lop])
      sinhviens = SinhVien.where(lop_id: lops)
      sinhviens.each do |sv|
        taikhoan_datontai = TaiKhoan.where(sinh_vien_id: sv)
        if taikhoan_datontai.present?

        else
          ma_sv = "SV" + (10000 + sv.id).to_s
          email_sv = "sv" + (10000 + sv.id).to_s + "@gmail.com"
          TaiKhoan.create(email: email_sv,name: sv.tensinhvien, username: ma_sv, sinh_vien_id:sv.id,
            role: 1, password: "123456", password_confirmation: "123456")
        end
      end
    else
      @taikhoan = TaiKhoan.new taikhoan_params
      if @taikhoan.save
        flash[:success] = "Bạn đả tạo thành công môn học"
        redirect_to admin_quyens_path
      else
        load_giao_vien
        @lops = Lop.all
        @khoas = Khoa.all
        flash[:danger] = "Bạn đả tạo không thành công"
        render :new
      end
    end
  end

  def update
    if @taikhoan.update_attributes taikhoan_params
      flash[:success] = "Chúc mừng bạn đả cập nhật thành công."
      redirect_to admin_quyens_path
    else
      load_giao_vien
      @lops = Lop.all
      @khoas = Khoa.all
      flash[:danger] = "Xin lỗi ! Bạn đã cập nhật không thành công."
      render :edit
    end
  end

  private

  def load_tai_khoan
    @taikhoan = TaiKhoan.find_by id: params[:id]
  end


  def taikhoan_params
    ma_gv = "GV" + (10000 + (params[:tai_khoan][:giao_vien_id]).to_i).to_s
    params.require(:tai_khoan).permit(:email, :name, :role, :giao_vien_id, :sinh_vien_id, :email, :password, :password_confirmation).merge(username: ma_gv)
  end

  def load_giao_vien
    @giaoviens = GiaoVien.all
  end
end
