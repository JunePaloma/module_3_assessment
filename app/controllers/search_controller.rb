class SearchController < ApplicationController
  def index
  @conn = Faraday.new(url: "https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=storeId,storeType,name&pageSize=2&apiKey=#{ENV[API_KEY]}") do |faraday|
    faraday.adapter Faraday.default_adapter
    end
  end
end
