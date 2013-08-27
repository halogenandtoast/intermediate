class DashboardsController < ApplicationController
  def show
    @shout = ShoutForm.new
    @shouts = current_user.shouts
  end
end
