class SearchController < ApplicationController
  def index
  @conn = Faraday.new(url: "https://api.bestbuy.com/v1/storesarea") do |faraday|
    faraday.adapter Faraday.default_adapter
    end


  #bring in params for zipcode
  response = @conn.get("area(80202,25))?format=json&show=storeId,storeType,longName,phone,distance,city&pageSize=10&apiKey=#{ENV["API_KEY"]}")
binding.pry
    @stores = JSON.parse(response.body, symbolize_names: true)[:stores]

  end
end
