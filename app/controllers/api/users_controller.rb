# app/controllers/api/users_controller.rb

class Api::UsersController < ApplicationController
  respond_to :json

  def show
    respond_with User.find(params[:id])
  end
end
