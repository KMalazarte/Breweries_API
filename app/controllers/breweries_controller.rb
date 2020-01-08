class BreweriesController < ApplicationController

  def index
    @all = brewery.all
    render json: @all
  end

end
