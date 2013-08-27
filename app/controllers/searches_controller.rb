class SearchesController < ApplicationController
  def new
    render
  end

  def create
    @shouts = ShoutSearch.new(params[:search][:term]).shouts
  end
end
