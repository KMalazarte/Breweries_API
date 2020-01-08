class BreweriesController < ApplicationController

  def index
    @all = Brewery.all
    render json: @all
  end

end
