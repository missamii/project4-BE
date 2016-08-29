class CarsController < ApplicationController
    def trigger_cars_api

    char_name = params[:name]

    puts "CAR_API_KEY:", ENV["CAR_API_KEY"]

    cars_api_key = ENV["CAR_API_KEY"]

    fullQuery = "http://api.edmunds.com/api/vehicle/v2/makes?fmt=json&year=1995&api_key=#{marvel_public_api_key}"

    data = HTTParty.get(fullQuery)
    render json: data

  end
end
