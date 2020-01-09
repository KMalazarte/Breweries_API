class BreweriesController < ApplicationController

  def index
    @all = Brewery.all
    render json: @all
  end

  # def show
  #   @brewery = Brewery.select{ |brewery| brewery[:d] == params[:id].to_i }
  #   render json: @brewery
  # end

end
