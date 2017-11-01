class Store
  attr_reader :name, :phone, :distance, :city, :id, :type
  def initialize(attrs = {})
    @name = attrs[:longName]
    @phone = attrs[:phone]
    @distance = attrs[:distance]
    @city = attrs[:city]
    @id = attrs[:storeId]
    @type = attrs[:storeType]
    end
end
