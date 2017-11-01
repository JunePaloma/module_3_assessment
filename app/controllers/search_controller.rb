class SearchController < ApplicationController
  def index
    @stores = StoreSearch.new(params[:zip]).stores
  end
end
