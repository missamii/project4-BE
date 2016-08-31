Rails.application.routes.draw do



  #API ROUTES

  post "/cars" => "cars#trigger_cars_api"

  post "/dealerships" => "dealerships#trigger_dealership_api"

  # message board
  get "/messages" => "messages#index"
  post "/message/new" => "messages#create"
<<<<<<< HEAD
  # put
  # delete
=======
  put "/message/:name" => "messages#update"
  delete "/messages/:id" => "messages#destroy"
>>>>>>> 7e8dba7da08d00267771e96cf38a919f51a0e9b3
end
