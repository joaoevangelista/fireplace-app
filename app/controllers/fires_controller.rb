# frozen_string_literal: true
# Controller for fire models
class FiresController < ApplicationController
  before_action :set_fire, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :master?, only: [:destroy]

  # GET /fires
  # GET /fires.json
  def index
    @fires = Fire.order(:updated_at).page params[:page]
  end

  # GET /fires/1
  # GET /fires/1.json
  def show
  end

  # GET /fires/new
  def new
    @fire = Fire.new(user_id: current_user.id)
  end

  # GET /fires/1/edit
  def edit
  end

  # POST /fires
  # POST /fires.json
  def create
    @fire = Fire.new(fire_params)
    @fire.location = { latitude: params[:latitude], longitude: params[:longitude] }
    respond_to do |format|
      if @fire.save
        format.html { redirect_to @fire, notice: 'Fire was successfully created.' }
        format.json { render :show, status: :created, location: @fire }
      else
        format.html { render :new }
        format.json { render json: @fire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fires/1
  # PATCH/PUT /fires/1.json
  def update
    respond_to do |format|
      if @fire.update(fire_params)
        format.html { redirect_to @fire, notice: 'Fire was successfully updated.' }
        format.json { render :show, status: :ok, location: @fire }
      else
        format.html { render :edit }
        format.json { render json: @fire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fires/1
  # DELETE /fires/1.json
  def destroy
    @fire.destroy
    respond_to do |format|
      format.html { redirect_to fires_url, notice: 'Fire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_fire
    @fire = Fire.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def fire_params
    params.require(:fire).permit(:name, :user_id, :severity_level_id, :description, :latitude,
                                 :longitude, :is_extinguished)
  end

  def master?
    return false unless current_user
    current_user.role.name.downcase.equal? 'master'
  end
end
