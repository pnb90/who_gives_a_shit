json.id restroom.id
json.location restroom.location
json.name restroom.name

# json.reviews restroom.reviews
# json.reviews_count restroom.count_reviews

json.reviews do
  json.array! restroom.reviews, partial: 'api/reviews/review', as: :review
end