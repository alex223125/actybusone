class Direction::DirectionsController < ApplicationController
  before_action :set_direction, only: %i[ show edit update destroy ]
  before_action :set_categories

  # GET /direction or /direction.json
  def index
    @directions = Directions::Direction.all
  end

  # GET /direction/1 or /direction/1.json
  def show
  end

  # GET /direction/new
  def new
    @direction = Directions::Direction.new
  end

  # GET /direction/1/edit
  def edit
  end

  # POST /direction or /direction.json
  def create
    @direction = Directions::Direction.new(direction_params)

    respond_to do |format|
      if @direction.save
        format.html { redirect_to direction_direction_url(@direction), notice: "Direction was successfully created." }
        format.json { render :show, status: :created, location: @direction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @direction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /direction/1 or /direction/1.json
  def update
    respond_to do |format|
      if @direction.update(direction_params)
        format.html { redirect_to direction_url(@direction), notice: "Direction was successfully updated." }
        format.json { render :show, status: :ok, location: @direction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @direction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /direction/1 or /direction/1.json
  def destroy
    @direction.destroy

    respond_to do |format|
      format.html { redirect_to directions_url, notice: "Direction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direction
      @direction = Directions::Direction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def direction_params
      binding.pry
      params.require(:directions_direction).permit(:name, :parent_id, :direction_category_id, :is_group)
    end

    def set_categories
      @categories = Directions::DirectionCategory.all.order(:name)
    end
end
