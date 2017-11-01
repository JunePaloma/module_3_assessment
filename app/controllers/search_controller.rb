class SearchController < ApplicationController
  def index
  @conn = Faraday.new(url: "https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=toreId,storeType,longName,phone,distance,city&pageSize=10&apiKey=ENV[API_KEY]") do |faraday|
    faraday.adapter Faraday.default_adapter
    end
  end
end
