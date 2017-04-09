class Admin::LoaiMonHocsController < Admin::ApplicationController
  def index
    # @loaimonhocs = LoaiMonHoc.all
    @search = LoaiMonHoc.ransack params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @loaimonhocs = @search.result.page(params[:page]).per 10
  end

  def show
  end
end
