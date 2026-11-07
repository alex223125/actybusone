class Quest::RegularitiesController < ApplicationController
  before_action :set_regularity, only: %i[ show edit update destroy ]

  # GET /regularities or /regularities.json
  def index
    @regularities = Quests::Regularity.all
  end

  # GET /regularities/1 or /regularities/1.json
  def show
  end

  # GET /regularities/new
  def new
    @regularity = Quests::Regularity.new
  end

  # GET /regularities/1/edit
  def edit
  end

  # POST /regularities or /regularities.json
  def create
    @regularity = Regularity.new(regularity_params)

    respond_to do |format|
      if @regularity.save
        format.html { redirect_to regularity_url(@regularity), notice: "Regularity was successfully created." }
        format.json { render :show, status: :created, location: @regularity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @regularity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regularities/1 or /regularities/1.json
  def update
    respond_to do |format|
      if @regularity.update(regularity_params)
        format.html { redirect_to regularity_url(@regularity), notice: "Regularity was successfully updated." }
        format.json { render :show, status: :ok, location: @regularity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @regularity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regularities/1 or /regularities/1.json
  def destroy
    @regularity.destroy

    respond_to do |format|
      format.html { redirect_to regularities_url, notice: "Regularity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regularity
      @regularity = Quests::Regularity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def regularity_params
      binding.pry
      params.require(:regularity).permit(:title)
    end
end
