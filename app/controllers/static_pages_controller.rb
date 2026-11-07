class StaticPagesController < ApplicationController

  # GET /home
  def home
  end

  # def index
  #   binding.pry
  #   if params[:pin_content_category_id]
  #     @category = PinContentCategory.where(id: params[:pin_content_category_id])
  #     @pins = @category.pins
  #   else
  #     @pins = Pin.all.order("created_at DESC")
  #   end
  # end

  # class TasksController
  #   # GET /tasks
  #   # GET /categories/1/tasks
  #   def index
  #     if params[:category_id]
  #       @category = Category.includes(:tasks)
  #                           .find(params[:category_id])
  #       @tasks = @category.tasks
  #     else
  #       @tasks = Task.all
  #     end
  #   end
  # end


  # GET /main_page
  def main_page
    binding.pry
    if params[:direction]

      binding.pry
      service = Services::Pins::SearchPins.new(params[:direction][:search_term],
                                               params[:direction][:direction_ids],
                                               params[:direction][:pin_content_category_id])

      binding.pry
      @pins = service.call
    else

      binding.pry
      @pins = Pin.all.order("created_at DESC")
    end
  end


end
