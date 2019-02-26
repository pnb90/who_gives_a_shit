Rails.application.routes.draw do
  namespace :api do
    get '/restrooms' => 'restrooms#index'
    post '/restrooms' => 'restrooms#create'
    get '/restrooms/:id' => 'restrooms#show'
    patch '/restrooms/:id' => 'restrooms#update'
    delete '/restrooms/:id' => 'restrooms#destroy'

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end
end
