class ShoutsController < ApplicationController
  def create
    @shout = build_shout
    if @shout.save
      redirect_to dashboard_path
    end
  end

  private

  def build_shout
    shout_factory.build(params[:shout])
  end

  def shout_factory
    ShoutFactory.new(params[:content_type], current_user.shouts)
  end
end
