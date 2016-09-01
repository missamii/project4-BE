Rails.application.routes.draw do



  #API ROUTES

  post "/cars" => "cars#trigger_cars_api"

  post "/dealerships" => "dealerships#trigger_dealership_api"

  # message board
  get "/messages" => "messages#index"
  get "/messages/:name" => "messages#show"
  post "/message/new" => "messages#create"
  put "/messages/:name" => "messages#update"
  delete "/messages/:id" => "messages#destroy"
end
