class QuestPlanner::ToolPositionsController < ApplicationController
  before_action :set_tool_position, only: %i[ show edit update destroy ]

  # GET /tool_positions or /tool_positions.json
  def index
    @tool_positions = QuestsPlanners::ToolPosition.all
  end

  # GET /tool_positions/1 or /tool_positions/1.json
  def show
  end

  # GET /tool_positions/new
  def new
    @tool_position = QuestsPlanners::ToolPosition.new
  end

  # GET /tool_positions/1/edit
  def edit
  end

  # POST /tool_positions or /tool_positions.json
  def create
    @tool_position = QuestsPlanners::ToolPosition.new(tool_position_params)

    respond_to do |format|
      if @tool_position.save
        format.html { redirect_to quests_planner_tool_position_url(@tool_position), notice: "Tool position was successfully created." }
        format.json { render :show, status: :created, location: @tool_position }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tool_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tool_positions/1 or /tool_positions/1.json
  def update
    respond_to do |format|
      if @tool_position.update(tool_position_params)
        format.html { redirect_to tool_position_url(@tool_position), notice: "Tool position was successfully updated." }
        format.json { render :show, status: :ok, location: @tool_position }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tool_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tool_positions/1 or /tool_positions/1.json
  def destroy
    @tool_position.destroy

    respond_to do |format|
      format.html { redirect_to tool_positions_url, notice: "Tool position was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tool_position
      @tool_position = QuestsPlanners::ToolPosition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tool_position_params
      binding.pry
      params.require(:quests_planners_tool_position).permit(:title, :description, :planner_id)
    end
end
