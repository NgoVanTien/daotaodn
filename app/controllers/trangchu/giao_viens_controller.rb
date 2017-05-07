class Trangchu::GiaoViensController < ApplicationController
  def index
    @khoas = Khoa.all
    @giaoviens = Khoa.find_by_id(params[:id_khoa])&.giao_viens
  end

  def show

  end
end
