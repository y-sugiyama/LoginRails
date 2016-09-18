class UserPolicy
  attr_reader :role

  def initialize(role)
    @role = role
  end

  def index
    false
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create
    role.admin
  end

  def new
    create
  end

  def update
    role.admin
  end

  def edit
    update
  end

  def destroy
    role.admin
  end

#  def scope
#    Pundit.policy_scope!(user, record.class)
#  end
#
#  class Scope
#    attr_reader :user, :scope
#
#    def initialize(user, scope)
#      @user = user
#      @scope = scope
#    end
#
#    def resolve
#      scope
#    end
#  end
end
