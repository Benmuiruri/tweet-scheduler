class RegistrationsController < ApplicationsController
  def new
    @user = User.new
  end
end