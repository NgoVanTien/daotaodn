class Daotao::ApplicationController < ApplicationController
  layout "admin_application"
  before_action :authenticate_tai_khoan!
end
