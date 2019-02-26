class Api::RestroomsController < ApplicationController
  # before_action :authenticate_user
  def index
    response = HTTP.get("https://www.refugerestrooms.org/api/v1/restrooms.json")
    render json: response.parse.to_json
  end

  def create
    @restroom = Restroom.new(
                            cleanliness: params[:cleanliness],
                            uniqueness: params[:uniqueness],
                            upkeep: params[:upkeep],
                            toilet_paper_quality: params[:toilet_paper_quality],
                            amenities: params[:amenities],
                            accessibility: params[:accessibility],
                            number_of_stalls: params[:number_of_stalls],
                            size: params[:size],
                            privacy: params[:privacy],
                            location: params[:location],
                            summary: params[:summary],
                            overall_rating: params[:overall_rating]
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

    @restroom.cleanliness = params[:cleanliness] || @restroom.cleanliness
    @restroom.uniqueness = params[:uniqueness] || @restroom.uniqueness
    @restroom.upkeep = params[:upkeep] || @restroom.upkeep
    @restroom.toilet_paper_quality = params[:toilet_paper_quality] || @restroom.toilet_paper_quality
    @restroom.amenities = params[:amenities] || @restroom.amenities
    @restroom.accessibility = params[:accessibility] || @restroom.accessibility
    @restroom.number_of_stalls = params[:number_of_stalls] || @restroom.number_of_stalls
    @restroom.size = params[:size] || @restroom.size
    @restroom.privacy = params[:privacy] || @restroom.privacy
    @restroom.location = params[:location] || @restroom.location
    @restroom.summary = params[:summary] || @restroom.summary
    @restroom.overall_rating = params[:overall_rating] || @restroom.overall_rating

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