class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items, include: :user
      end
    
      private
    
      def render_not_found_response
        render json: { error: "item  not found" }, status: :not_found
      end
end
