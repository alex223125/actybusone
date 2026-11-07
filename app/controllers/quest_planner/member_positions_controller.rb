class QuestPlanner::MemberPositionsController < ApplicationController
  before_action :set_member_position, only: %i[ show edit update destroy ]

  # GET /member_positions or /member_positions.json
  def index
    @member_positions = QuestsPlanners::MemberPosition.all
  end

  # GET /member_positions/1 or /member_positions/1.json
  def show
  end

  # GET /member_positions/new
  def new
    @member_position = QuestsPlanners::MemberPosition.new
  end

  # GET /member_positions/1/edit
  def edit
  end

  # POST /member_positions or /member_positions.json
  def create
    @member_position = QuestsPlanners::MemberPosition.new(member_position_params)

    respond_to do |format|
      if @member_position.save
        format.html { redirect_to quests_planner_member_position_path(@member_position), notice: "Member position was successfully created." }
        format.json { render :show, status: :created, location: @member_position }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @member_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_positions/1 or /member_positions/1.json
  def update
    respond_to do |format|
      if @member_position.update(member_position_params)
        format.html { redirect_to member_position_url(@member_position), notice: "Member position was successfully updated." }
        format.json { render :show, status: :ok, location: @member_position }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @member_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_positions/1 or /member_positions/1.json
  def destroy
    @member_position.destroy

    respond_to do |format|
      format.html { redirect_to member_positions_url, notice: "Member position was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_position
      @member_position = QuestsPlanners::MemberPosition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_position_params
      binding.pry
      params.require(:quests_planners_member_position).permit(:title, :planner_id)
    end
end
