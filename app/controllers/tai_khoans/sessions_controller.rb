class TaiKhoans::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]
after_action :check_tai_khoan

def check_tai_khoan
  binding.pry
  if current_sinh_vien?
    redirect_to daotao_root_url
  elsif
    redirect_to root_url
  else
    redirect_to admin_root_url
  end
end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
