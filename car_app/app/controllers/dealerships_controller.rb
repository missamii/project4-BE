class DealershipsController < ApplicationController
      def trigger_dealership_api
    car_name = params[:make]
    zipcode = params[:zipcode]


    puts "CAR_API_KEY:", ENV["CAR_API_KEY"]

    cars_api_key = ENV["CAR_API_KEY"]

    fullQuery = "https://api.edmunds.com/api/dealer/v2/franchises?zipcode=#{zipcode}&make=#{car_name}&api_key=#{cars_api_key}"

    puts "fullQuery:", [fullQuery]

    data = HTTParty.get(fullQuery)
    render json: data

  end
end
