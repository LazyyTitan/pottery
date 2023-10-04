class PotsController < ApplicationController
  before_action :set_pot, only: %i[ show edit update destroy ]

  # GET /pots or /pots.json
  def index
    @pots = Pot.all
  end

  # GET /pots/1 or /pots/1.json
  def show
    @pots = Pot.all
  end

  # GET /pots/new
  def new
    @pot = Pot.new
  end

  # GET /pots/1/edit
  def edit
  end

  # POST /pots or /pots.json
  def create
    @pot = Pot.new(pot_params)

    respond_to do |format|
      if @pot.save
        format.html { redirect_to pot_url(@pot), notice: "Class was successfully booked." }
        format.json { render :show, status: :created, location: @pot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pots/1 or /pots/1.json
  def update
    respond_to do |format|
      if @pot.update(pot_params)
        format.html { redirect_to pot_url(@pot), notice: "Class booking was successfully updated." }
        format.json { render :show, status: :ok, location: @pot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pots/1 or /pots/1.json
  def destroy
    @pot.destroy

    respond_to do |format|
      format.html { redirect_to pots_url, notice: "Class booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

 def correct_user
    @ticker = current_user.pots.find_by(id: params[:id])
    redirect_to pots_path, notice: "Not authorized to edit this class!" if @ticker.nil?
  end

def setLesson
  :lesson
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pot
      @pot = Pot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pot_params
      params.require(:pot).permit(:lesson, :booked, :class_type, :user_name, :user_id)
    end
end
