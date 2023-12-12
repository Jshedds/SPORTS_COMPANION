class AthletePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
  def new?
    true
  end
  def create?
    true
  end

  def show?
    true
  end

  def find_or_create?
    true
  end
end
