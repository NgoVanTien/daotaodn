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
    when "normal"
      can :manage, :all
      cannot :manage, Employee
      cannot :manage, Notification
      can :update, Employee, id: employee.id
      employee.permissions.each do |permission|
        can permission.action.to_sym, permission.subject_class.classify.safe_constantize
      end
    when "limited"
      cannot :manage, :all
      can :update, Employee, id: employee.id
      employee.permissions.each do |permission|
        can permission.action.to_sym, permission.subject_class.classify.safe_constantize
      end
      can :show, Employee, id: employee.id
    end

    unless employee.company.subdomain == Settings.origin_subdomain
      cannot :manage, Settings.block_company_accessing.map {|c| c.classify.safe_constantize}
    end
  end
end
