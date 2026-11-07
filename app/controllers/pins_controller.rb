class PinsController < ApplicationController
  before_action :find_pin, only: [:show, :edit, :update, :destroy, :upvote]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_content_category, only: [:new]

  def index
    @pins = Pin.all.order("created_at DESC")
  end

  def show
  end

  def new
    @pin = current_user.pins.build
  end

  def create
    @pin = current_user.pins.build(pin_params)

    binding.pry
    if @pin.save
      redirect_to @pin, notice: "Successfully created new Pin"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: "Pin was Successfully updated!"
    else
      render 'edit'
    end
  end

  def destroy
    binding.pry
    @pin.destroy

    binding.pry
    redirect_to root_path
  end

  def upvote
    @pin.upvote_by current_user
    redirect_back fallback_location: root_path
  end

  private

  def pin_params
    binding.pry
    params.require(:pin).permit(:title, :description, :image, :pin_content_category_id, direction_ids: [])
  end

  def find_pin
    binding.pry
    @pin = Pin.find(params[:id])
  end

  def set_content_category
    @pin_content_categories = PinContentCategory.all.order(:title)
  end
end
