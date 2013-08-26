class WelcomeController < ApplicationController
  skip_before_filter :authorize

  def index
    render
  end
end
