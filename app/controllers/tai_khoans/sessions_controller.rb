class TaiKhoans::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]
  # after_action :check_tai_khoan
  #
  # def check_tai_khoan
  #   binding.pry
  #   if current_tai_khoan.present? && current_sinh_vien?
  #     render daotao_root_path
  #   elsif
  #     render root_path
  #   else
  #     render admin_root_path
  #   end
  # end



  # GET /resource/sign_in
  def new
    self.resource = resource_class.new(sign_in_params)
    clean_up_passwords(resource)
    yield resource if block_given?
    respond_with(resource, serialize_options(resource))
  end

  # POST /resource/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:success, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
    respond_with resource, location: after_sign_in_path_for(resource)
  end

  # DELETE /resource/sign_out
  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message! :success, :signed_out if signed_out
    yield if block_given?
    respond_to_on_destroy
  end

  protected

  def sign_in_params
    devise_parameter_sanitizer.sanitize(:sign_in)
  end
end
