class IndicidentTypesController < ApplicationController
  before_action :set_indicident_type, only: [:show, :edit, :update, :destroy]

  # GET /indicident_types
  # GET /indicident_types.json
  def index
    @indicident_types = IndicidentType.all
  end

  # GET /indicident_types/1
  # GET /indicident_types/1.json
  def show
  end

  # GET /indicident_types/new
  def new
    @indicident_type = IndicidentType.new
  end

  # GET /indicident_types/1/edit
  def edit
  end

  # POST /indicident_types
  # POST /indicident_types.json
  def create
    @indicident_type = IndicidentType.new(indicident_type_params)

    respond_to do |format|
      if @indicident_type.save
        format.html { redirect_to @indicident_type, notice: 'Indicident type was successfully created.' }
        format.json { render :show, status: :created, location: @indicident_type }
      else
        format.html { render :new }
        format.json { render json: @indicident_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicident_types/1
  # PATCH/PUT /indicident_types/1.json
  def update
    respond_to do |format|
      if @indicident_type.update(indicident_type_params)
        format.html { redirect_to @indicident_type, notice: 'Indicident type was successfully updated.' }
        format.json { render :show, status: :ok, location: @indicident_type }
      else
        format.html { render :edit }
        format.json { render json: @indicident_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicident_types/1
  # DELETE /indicident_types/1.json
  def destroy
    @indicident_type.destroy
    respond_to do |format|
      format.html { redirect_to indicident_types_url, notice: 'Indicident type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicident_type
      @indicident_type = IndicidentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indicident_type_params
      params.require(:indicident_type).permit(:name)
    end
end
