class ShoutsController < ApplicationController
  def create
    create_shout
    redirect_to dashboard_path
  end

  private

  def create_shout
    shout_factory.create(params[:shout])
  end

  def shout_factory
    ShoutFactory.new(params[:content_type], current_user.shouts)
  end
end
