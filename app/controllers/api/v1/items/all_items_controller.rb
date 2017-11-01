module Api
  module V1
    module Items
      class AllItemsController < ApplicationController
        def show
          render json: Item.all
        end
      end
    end
  end
end
