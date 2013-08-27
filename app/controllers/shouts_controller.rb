class ShoutsController < ApplicationController
  def create
    @shout = create_shout
    if @shout.submit
      redirect_to dashboard_path
    end
  end

  private

  def create_shout
    ShoutForm.new shout_params
  end

  def shout_params
    params[:shout].merge(scope: current_user.shouts)
  end

end
