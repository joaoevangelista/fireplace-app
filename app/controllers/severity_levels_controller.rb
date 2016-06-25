# frozen_string_literal: true
# :nodoc:
class SeverityLevelsController < ApplicationController
  before_action :set_severity_level, only: [:show, :edit, :update, :destroy]
  before_action authenticate_user!, only: [:edit, :update, :new, :create, :destroy]

  # GET /severity_levels
  # GET /severity_levels.json
  def index
    @severity_levels = SeverityLevel.order(:created_at).page params[:page]
  end

  # GET /severity_levels/1
  # GET /severity_levels/1.json
  def show
    @fires = Kaminari.paginate_array(@severity_level.fires).page(params[:page]).per(20)
  end

  # GET /severity_levels/new
  def new
    @severity_level = SeverityLevel.new
  end

  # GET /severity_levels/1/edit
  def edit
  end

  # POST /severity_levels
  # POST /severity_levels.json
  def create
    @severity_level = SeverityLevel.new(severity_level_params)

    respond_to do |format|
      if @severity_level.save
        format.html do
          redirect_to @severity_level,
                      notice: 'Severity level was successfully created.'
        end
        format.json { render :show, status: :created, location: @severity_level }
      else
        format.html { render :new }
        format.json { render json: @severity_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /severity_levels/1
  # PATCH/PUT /severity_levels/1.json
  def update
    respond_to do |format|
      if @severity_level.update(severity_level_params)
        format.html do
          redirect_to @severity_level,
                      notice: 'Severity level was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @severity_level }
      else
        format.html { render :edit }
        format.json { render json: @severity_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /severity_levels/1
  # DELETE /severity_levels/1.json
  def destroy
    @severity_level.destroy
    respond_to do |format|
      format.html do
        redirect_to severity_levels_url,
                    notice: 'Severity level was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_severity_level
    @severity_level = SeverityLevel.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def severity_level_params
    params.require(:severity_level).permit(:name, :color)
  end
end
