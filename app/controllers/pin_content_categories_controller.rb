class PinContentCategoriesController < ApplicationController
  before_action :set_pin_content_category, only: %i[ show edit update destroy ]

  # GET /pin_content_categories or /pin_content_categories.json
  def index
    @pin_content_categories = PinContentCategory.all
  end

  # GET /pin_content_categories/1 or /pin_content_categories/1.json
  def show
  end

  # GET /pin_content_categories/new
  def new
    @pin_content_category = PinContentCategory.new
  end

  # GET /pin_content_categories/1/edit
  def edit
  end

  # POST /pin_content_categories or /pin_content_categories.json
  def create
    @pin_content_category = PinContentCategory.new(pin_content_category_params)

    respond_to do |format|
      if @pin_content_category.save
        format.html { redirect_to pin_content_category_url(@pin_content_category), notice: "Pin content category was successfully created." }
        format.json { render :show, status: :created, location: @pin_content_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pin_content_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pin_content_categories/1 or /pin_content_categories/1.json
  def update
    respond_to do |format|
      if @pin_content_category.update(pin_content_category_params)
        format.html { redirect_to pin_content_category_url(@pin_content_category), notice: "Pin content category was successfully updated." }
        format.json { render :show, status: :ok, location: @pin_content_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pin_content_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pin_content_categories/1 or /pin_content_categories/1.json
  def destroy
    @pin_content_category.destroy

    respond_to do |format|
      format.html { redirect_to pin_content_categories_url, notice: "Pin content category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin_content_category
      @pin_content_category = PinContentCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pin_content_category_params
      params.require(:pin_content_category).permit(:title)
    end
end
