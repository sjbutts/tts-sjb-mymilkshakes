class MilkshakesController < ApplicationController
  before_action :set_milkshake, only: [:show, :edit, :update, :destroy]

def home
end
  # GET /milkshakes
  # GET /milkshakes.json
  def index
    @milkshakes = Milkshake.all
  end

  # GET /milkshakes/1
  # GET /milkshakes/1.json
  def show
  end

  # GET /milkshakes/new
  def new
    @milkshake = Milkshake.new
  end

  # GET /milkshakes/1/edit
  def edit
  end

  # POST /milkshakes
  # POST /milkshakes.json
  def create
    @milkshake = Milkshake.new(milkshake_params)

    respond_to do |format|
      if @milkshake.save
        format.html { redirect_to @milkshake, notice: 'Milkshake was successfully created.' }
        format.json { render :show, status: :created, location: @milkshake }
      else
        format.html { render :new }
        format.json { render json: @milkshake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /milkshakes/1
  # PATCH/PUT /milkshakes/1.json
  def update
    respond_to do |format|
      if @milkshake.update(milkshake_params)
        format.html { redirect_to @milkshake, notice: 'Milkshake was successfully updated.' }
        format.json { render :show, status: :ok, location: @milkshake }
      else
        format.html { render :edit }
        format.json { render json: @milkshake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milkshakes/1
  # DELETE /milkshakes/1.json
  def destroy
    @milkshake.destroy
    respond_to do |format|
      format.html { redirect_to milkshakes_url, notice: 'Milkshake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milkshake
      @milkshake = Milkshake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milkshake_params
      params.require(:milkshake).permit(:shake, :ingredients, :price, :image)
    end
end
