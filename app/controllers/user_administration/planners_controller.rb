# frozen_string_literal: true

class UserAdministration::PlannersController < UserAdministration::UserAdministrationController

  # GET /user_administration/planners
  def index
    binding.pry
    @planners = current_user.planners
  end

end