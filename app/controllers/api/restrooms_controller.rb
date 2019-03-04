class Api::RestroomsController < ApplicationController
  before_action :authenticate_user, only: [:create]
  before_action :authenticate_admin, only: [:update, :destroy]


  def index
    @restrooms = Restroom.all
    render 'index.json.jbuilder'
    
    # response = HTTP.get("https://www.refugerestrooms.org:443/api/v1/restrooms/by_location.json?lat=41.878&lng=-87.620")
    # render json: response.parse.to_json
  end

  def create
    @restroom = Restroom.new(
                            location: params[:location],
                            name: params[:name]
                            )
    if @restroom.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @restroom.errors.full_messages},status: :unprocessable_entity
    end
  end

  def show
    @restroom = Restroom.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @restroom = Restroom.find(params[:id])

    @restroom.location = params[:location] || @restroom.location
    @restroom.name = params[:name] || @restroom.name

    if @restroom.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @restroom.errors.full_messages},status: :unprocessable_entity
    end
  end

  def destroy
    restroom = Restroom.find(params[:id])
    restroom.destroy
    render json: {message: "Successfully Destroyed restroom"}
  end
end