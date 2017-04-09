class Admin::LoaiMonHocsController < Admin::ApplicationController
  def index
    @search = LoaiMonHoc.search params[:q]
    @search.sorts  = "created_at desc" if @search.sorts.empty?
    @loaimonhocs = @search.result.page(params[:page]).per 5
  end

  def show
  end
end
