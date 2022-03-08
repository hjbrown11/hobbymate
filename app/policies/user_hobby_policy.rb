class UserHobbyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create_many?
    true
  end

  def destroy?
    record.user == user
  end
end
