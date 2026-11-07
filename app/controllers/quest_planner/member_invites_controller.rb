class QuestPlanner::MemberInvitesController < ApplicationController
  before_action :set_member_invite, only: %i[ show edit update destroy ]

  # GET /member_invites or /member_invites.json
  def index
    @member_invites = QuestsPlanners::MemberInvite.all
  end

  # GET /member_invites/1 or /member_invites/1.json
  def show
  end

  # GET /member_invites/new
  def new
    @member_invite = QuestsPlanners::MemberInvite.new
  end

  # GET /member_invites/1/edit
  def edit
  end

  # POST /member_invites or /member_invites.json
  def create
    binding.pry
    # > #<ActionController::Parameters {"authenticity_token"=>"
    #   # 0FU7tcGH9yX-WQd7ZoAl3nkwiLThCxTSj5hKfZ2EO7xBEAeDvOucLd5WJl8wqoSVIlBFy8gj_es8YyK5VlS2mw",
    #   # "quests_planners_member_invite"=>{"planner_id"=>"14", "user_id"=>"2", "amount_of_days"=>"6"},
    #   # "commit"=>"Create Member invite", "controller"=>"quest_planner/member_invites", "action"=>"create"} permitted: false>
    # @member_invite = QuestsPlanners::MemberInvite.new(member_invite_params)
    service = Services::QuestsPlanners::MemberInvites::Create.new(params[:quests_planners_member_invite][:planner_id],
                                                                  params[:quests_planners_member_invite][:user_id],
                                                                  params[:quests_planners_member_invite][:amount_of_days])

    binding.pry
    service.call
    member_invite = service.member_invite

    respond_to do |format|
      binding.pry
      if member_invite.errors.blank?
        binding.pry
        format.html { redirect_to quests_planner_member_invite_url(member_invite), notice: "Member invite was successfully created." }
        format.json { render :show, status: :created, location: member_invite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: member_invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_invites/1 or /member_invites/1.json
  def update
    respond_to do |format|
      if @member_invite.update(member_invite_params)
        format.html { redirect_to member_invite_url(@member_invite), notice: "Member invite was successfully updated." }
        format.json { render :show, status: :ok, location: @member_invite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @member_invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_invites/1 or /member_invites/1.json
  def destroy
    @member_invite.destroy

    respond_to do |format|
      format.html { redirect_to member_invites_url, notice: "Member invite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_invite
      @member_invite = QuestsPlanners::MemberInvite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_invite_params
      binding.pry
      params.require(:quests_planners_member_invite).permit(:user_id, :planner_id)
    end

    def set_expiration_date
      #calculate from params
    end
end
