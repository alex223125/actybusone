class QuestPlanner::PlannersController < ApplicationController
  before_action :set_planner, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /planners or /planners.json
  def index
    @planners = QuestsPlanners::Planner.all
  end

  # GET /planners/1 or /planners/1.json
  def show
  end

  # GET /planners/new
  def new
    @planner = QuestsPlanners::Planner.new
  end

  # GET /planners/1/edit
  def edit
  end

  # POST /planners or /planners.json
  def create
    # @pin = current_user.pins.build(pin_params)
    # @planner = QuestsPlanners::Planner.new(planner_params)

    binding.pry
    @planner = current_user.planners.build(planner_params)

    respond_to do |format|
      if @planner.save
        binding.pry
        format.html { redirect_to quests_planner_planners_path(@planner), notice: "Planner was successfully created." }
        format.json { render :show, status: :created, location: @planner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @planner.errors, status: :unprocessable_entity }
      end
      binding.pry
    end
  end

  # PATCH/PUT /planners/1 or /planners/1.json
  def update
    respond_to do |format|
      if @planner.update(planner_params)
        format.html { redirect_to planner_url(@planner), notice: "Planner was successfully updated." }
        format.json { render :show, status: :ok, location: @planner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @planner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planners/1 or /planners/1.json
  def destroy
    @planner.destroy

    respond_to do |format|
      format.html { redirect_to planners_url, notice: "Planner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planner
      @planner = QuestsPlanners::Planner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def planner_params
      params.require(:quests_planners_planner).permit(:title, :quest_id, :is_individual_planned,
                                                      :is_no_tools_required, member_position_ids: [],
                                                      tool_position_ids: []
      )
    end
end
