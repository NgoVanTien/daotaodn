class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.role == "sinhvien"
      daotao_root_path
    else
      admin_root_path
    end
  end
end
