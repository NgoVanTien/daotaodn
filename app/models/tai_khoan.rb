class TaiKhoan < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  self.table_name = "tai_khoan"
  has_one :giao_vien, class_name: GiaoVien.name
  has_one :sinh_vien, class_name: SinhVien.name
  attr_accessor :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:sinhvien, :giangvien, :giangvu, :vanphong, :admin]

  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }


  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      where(conditions).first
    end
  end

end
