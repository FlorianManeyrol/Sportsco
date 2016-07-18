class SeancePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all #where published_at ...
    end
  end

  def index_user?
  	true
  end

  def show?
  	true #tous le monde peut voir la show
  end

  def create?
  	true
  end

  def update?
    user_is_owner_or_admin?
  end

  def destroy?
  	user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
  	user.admin || record.user == user
  end
end
