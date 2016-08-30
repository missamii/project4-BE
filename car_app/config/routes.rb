Rails.application.routes.draw do



  #API ROUTES

  post "/cars" => "cars#trigger_cars_api"

  post "/dealerships" => "dealerships#trigger_dealership_api"

  # message board
  get "/messages" => "messages#index"
  post "/message/new" => "messages#create"
  put "/message/:name" => "messages#update"
  delete "/message/:name" => "messages#destroy"
end
