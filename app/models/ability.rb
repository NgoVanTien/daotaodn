class Ability
  include CanCan::Ability

  def initialize tai_khoan
    alias_action :read, to: :can_read
    alias_action :create, to: :can_create
    alias_action :update, to: :can_update
    alias_action :destroy, to: :can_destroy

    case tai_khoan.role
    when "admin"
      can :manage, :all
    when "vanphong"
      can :manage, :all
      cannot :manage, Employee
      cannot :manage, Notification
      can :update, Employee, id: employee.id
    when "giangvu"
      cannot :manage, :all
      can :update, Employee, id: employee.id
    when "giangvien"
      cannot :manage, :all
      can :update, Employee, id: employee.id
    when "sinhvien"
      cannot :manage, :all
      can :update, Employee, id: employee.id
    end
  end
end
