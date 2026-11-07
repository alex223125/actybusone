# frozen_string_literal: true

class UserAdministration::UserAdministrationController < ActionController::Base
  before_action :authenticate_user!, except: [:index, :show]

  layout 'user_administration/layouts/application'

  protected

end