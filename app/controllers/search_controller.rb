class SearchController < ApplicationController
  def index
  @conn = Faraday.new(url: "https://api.bestbuy.com") do |faraday|
    faraday.adapter Faraday.default_adapter
    end
  #bring in params for zipcode

  response =
  @conn.get("/v1/stores(area(80202,25))?format=json&show=storeId,storeType,longName,phone,distance,city&apiKey=#{ENV["API_KEY"]}")

binding.pry



    @stores_raw = JSON.parse(response.body, symbolize_names: true)[:stores]

  end
end
