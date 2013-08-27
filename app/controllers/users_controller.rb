class UsersController < ApplicationController
  skip_before_filter :authorize

  def show
    @user = User.find(params[:id])
  end
end
