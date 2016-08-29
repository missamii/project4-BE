Rails.application.routes.draw do



  #API ROUTES

  post "/cars" => "cars#trigger_cars_api"
end
