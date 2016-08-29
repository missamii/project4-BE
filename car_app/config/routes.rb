Rails.application.routes.draw do



  #API ROUTES

  post "/cars" => "cars#trigger_cars_api"

  # message board
  get "/messages" => "messages#index"
  post "/message/new" => "messages#create"
end
