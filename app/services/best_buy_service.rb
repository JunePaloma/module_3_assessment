class BestBuyService

  def initialize
    @conn = Faraday.new(url: "https://api.bestbuy.com") do |faraday|
      faraday.adapter Faraday.default_adapter
      end
    end

    def filter_by_zip(zip)
      response =
      @conn.get("/v1/stores(area(#{zip},25))?format=json&show=storeId,storeType,longName,phone,distance,city&apiKey=#{ENV["API_KEY"]}")

      @raw_stores = JSON.parse(response.body, symbolize_names: true)[:stores]
    end
end
