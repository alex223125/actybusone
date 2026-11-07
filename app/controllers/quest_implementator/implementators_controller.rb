class QuestImplementator::ImplementatorsController < ApplicationController
  before_action :set_implementator, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /implementators or /implementators.json
  def index
    @implementators = Implementator.all
  end

  # GET /implementators/1 or /implementators/1.json
  def show
  end

  # GET /implementators/new
  def new
    @implementator = Implementator.new
  end

  # GET /implementators/1/edit
  def edit
  end

  # POST /implementators or /implementators.json
  def create
    # @implementator = Implementator.new(implementator_params)
    binding.pry
    @planner = current_user.planners.build(planner_params)

    respond_to do |format|
      if @implementator.save
        binding.pry
        format.html { redirect_to implementator_url(@implementator), notice: "Implementator was successfully created." }
        format.json { render :show, status: :created, location: @implementator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @implementator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /implementators/1 or /implementators/1.json
  def update
    respond_to do |format|
      if @implementator.update(implementator_params)
        format.html { redirect_to implementator_url(@implementator), notice: "Implementator was successfully updated." }
        format.json { render :show, status: :ok, location: @implementator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @implementator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /implementators/1 or /implementators/1.json
  def destroy
    @implementator.destroy

    respond_to do |format|
      format.html { redirect_to implementators_url, notice: "Implementator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_implementator
      @implementator = Implementator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def implementator_params
      params.require(:implementator).permit(:title)
    end
end
