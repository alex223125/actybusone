class Quest::QuestsController < ApplicationController
  before_action :set_quest, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]


  def index_two
    @quests = Quests::Quest.all.order("created_at DESC")
  end

  # GET /quest or /quest.json
  def index
    @quests = Quests::Quest.all
  end

  # GET /quest/1 or /quest/1.json
  def show
  end

  # GET /quest/new
  def new
    @quest = current_user.quests.build
  end

  # GET /quest/1/edit
  def edit
  end

  # POST /quest or /quest.json
  def create
    @quest = current_user.quests.build(quest_params)

    respond_to do |format|
      if @quest.save
        format.html { redirect_to quest_quest_url(@quest), notice: "Quest was successfully created." }
        format.json { render :show, status: :created, location: @quest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quest/1 or /quest/1.json
  def update
    respond_to do |format|
      if @quest.update(quest_params)
        format.html { redirect_to quest_url(@quest), notice: "Quest was successfully updated." }
        format.json { render :show, status: :ok, location: @quest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quest/1 or /quest/1.json
  def destroy
    @quest.destroy

    respond_to do |format|
      format.html { redirect_to quests_url, notice: "Quest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quest
      @quest = Quests::Quest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quest_params
      binding.pry
      params.require(:quests_quest).permit(:name, :description, :difficulty_id, :regularity_id,
                                           :recommended_amount_of_members_from, :recommended_amount_of_members_to,
                                           :recommended_amount_of_time_from, :recommended_amount_of_time_to)
    end
end