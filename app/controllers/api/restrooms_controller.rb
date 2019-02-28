class Api::RestroomsController < ApplicationController
  # before_action :authenticate_user
  def index
    @restrooms = Restroom.all
    render 'index.json.jbuilder'
    
    # response = HTTP.get("https://www.refugerestrooms.org/api/v1/restrooms.json")
    # render json: response.parse.to_json
  end

  def create
    @restroom = Restroom.new(
                            location: params[:location]
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