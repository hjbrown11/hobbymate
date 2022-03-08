class MatchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where("sender_id = #{user.id} OR receiver_id = #{user.id}")
    end
  end

  def show?
    user == record.sender || user == record.receiver
  end

  def destroy?
    user == record.sender || user == record.receiver
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    user == record.sender || user == record.receiver
  end

  def new_match?
    true
  end

  def no_match
    true
  end
end
