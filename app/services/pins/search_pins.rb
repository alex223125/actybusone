module Services
  module Pins
    class SearchPins
      # [1] pry(#<Direction::DirectionsController>)> params
      #=> #<ActionController::Parameters {"direction"=>{"search_term"=>"new field ",
      # "direction_ids"=>["1", "2", "3"], "pin_content_category_id"=>"2"},
      # "commit"=>"Submit", "controller"=>"direction/directions", "action"=>"index"} permitted: false>


      def initialize(search_term, direction_ids, pin_content_category_id)
        @search_term = search_term
        @direction_ids = direction_ids
        @pin_content_category_id = pin_content_category_id
      end

      def call
        @pins = Pin.all
        binding.pry
        filter_by_direction if @direction_ids.present?

        binding.pry
        filter_by_content_category if @pin_content_category_id.present?

        binding.pry
        search if @search_term.present?
      end

      private

      def filter_by_direction
        binding.pry
        # Post.includes(:categories).where(id: post_ids)
        @pins = @pins.includes(:directions).where('directions.id': [@direction_ids])
      end

      def filter_by_content_category
        binding.pry
        @pins = @pins.where(pin_content_category_id: @pin_content_category_id)
        # @category = PinContentCategory.where(id: params[:pin_content_category_id])
        # @pins = @category.pins
      end

      def search
        binding.pry
        @pins = @pins.where(description: @search_term)
      end

      # if params[:direction][:pin_content_category_id]
      #   @category = PinContentCategory.where(id: params[:pin_content_category_id])
      #   @pins = @category.pins
      # else
      #   @pins = Pin.all.order("created_at DESC")
      # end
    end
  end
end



