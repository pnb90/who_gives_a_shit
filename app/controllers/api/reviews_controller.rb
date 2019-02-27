class Api::ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render 'index.json.jbuilder'
    
    # response = HTTP.get("https://www.refugerestrooms.org/api/v1/restrooms.json")
    # render json: response.parse.to_json
  end

  def create
    @review = Review.new(
                            cleanliness: params[:cleanliness],
                            uniqueness: params[:uniqueness],
                            upkeep: params[:upkeep],
                            toilet_paper_quality: params[:toilet_paper_quality],
                            amenities: params[:amenities],
                            accessibility: params[:accessibility],
                            number_of_stalls: params[:number_of_stalls],
                            size: params[:size],
                            privacy: params[:privacy],
                            summary: params[:summary],
                            overall_rating: params[:overall_rating]
                            )
    if @review.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @review.errors.full_messages},status: :unprocessable_entity
    end
  end

  def show
    @review = Review.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @review = Review.find(params[:id])

    @review.cleanliness = params[:cleanliness] || @review.cleanliness
    @review.uniqueness = params[:uniqueness] || @review.uniqueness
    @review.upkeep = params[:upkeep] || @review.upkeep
    @review.toilet_paper_quality = params[:toilet_paper_quality] || @review.toilet_paper_quality
    @review.amenities = params[:amenities] || @review.amenities
    @review.accessibility = params[:accessibility] || @review.accessibility
    @review.number_of_stalls = params[:number_of_stalls] || @review.number_of_stalls
    @review.size = params[:size] || @review.size
    @review.privacy = params[:privacy] || @review.privacy
    @review.summary = params[:summary] || @review.summary
    @review.overall_rating = params[:overall_rating] || @review.overall_rating

    if @review.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @review.errors.full_messages},status: :unprocessable_entity
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    render json: {message: "Successfully Destroyed Review"}
  end
end
