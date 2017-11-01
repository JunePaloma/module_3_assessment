class StoreSearch
  def initialize(zip)
    @zip = zip
  end

  def stores
    raw_stores.map do |raw_store|
      Store.new(raw_store)
    end
  end 

  private

  attr_reader :zip

  def raw_stores
  store_service.filter_by_zip(zip)
  end

  def store_service
    BestBuyService.new
  end

end
