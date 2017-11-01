class SearchController < ApplicationController
  def index
  @conn = Faraday.new(url: "https://api.bestbuy.com") do |faraday|
    faraday.adapter Faraday.default_adapter
    end
  #bring in params for zipcode

  response =
  @conn.get("/v1/stores(area(80202,25))?format=json&show=storeId,storeType,longName,phone,distance,city&apiKey=#{ENV["API_KEY"]}")

  @raw_stores = JSON.parse(response.body, symbolize_names: true)[:stores]

  @stores = @raw_stores.map do |raw_store|
    Store.new(raw_store)
    end
  end
end
