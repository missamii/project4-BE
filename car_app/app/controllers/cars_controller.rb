class CarsController < ApplicationController
    def trigger_cars_api

    car_name = params[:name]

    puts "CAR_API_KEY:", ENV["CAR_API_KEY"]

    cars_api_key = ENV["CAR_API_KEY"]

    fullQuery = "http://api.edmunds.com/api/vehicle/v2/#{car_name}?fmt=json&year=2016&api_key=#{cars_api_key}"


    puts "fullQuery:", [fullQuery]

    data = HTTParty.get(fullQuery)
    render json: data

  end
end
