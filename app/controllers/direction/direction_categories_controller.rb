class Direction::DirectionCategoriesController < ApplicationController
  before_action :set_direction_category, only: %i[ show edit update destroy ]

  # GET /direction_categories or /direction_categories.json
  def index
    @direction_categories = Directions::DirectionCategory.all
  end

  # GET /direction_categories/1 or /direction_categories/1.json
  def show
  end

  # GET /direction_categories/new
  def new
    @direction_category = Directions::DirectionCategory.new
  end

  # GET /direction_categories/1/edit
  def edit
  end

  # POST /direction_categories or /direction_categories.json
  def create
    @direction_category = Directions::DirectionCategory.new(direction_category_params)

    respond_to do |format|
      if @direction_category.save
        format.html { redirect_to direction_category_url(@direction_category), notice: "Direction category was successfully created." }
        format.json { render :show, status: :created, location: @direction_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @direction_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /direction_categories/1 or /direction_categories/1.json
  def update
    respond_to do |format|
      if @direction_category.update(direction_category_params)
        format.html { redirect_to direction_category_url(@direction_category), notice: "Direction category was successfully updated." }
        format.json { render :show, status: :ok, location: @direction_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @direction_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /direction_categories/1 or /direction_categories/1.json
  def destroy
    @direction_category.destroy

    respond_to do |format|
      format.html { redirect_to direction_categories_url, notice: "Direction category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direction_category
      @direction_category = Directions::DirectionCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def direction_category_params
      params.require(:direction_category).permit(:name)
    end
end
