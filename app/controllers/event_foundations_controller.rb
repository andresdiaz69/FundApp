class EventFoundationsController < ApplicationController
  before_action :set_event_foundation, only: [:show, :edit, :update, :destroy]

  # GET /event_foundations
  # GET /event_foundations.json
  def index
    @event_foundations = EventFoundation.all
  end

  # GET /event_foundations/1
  # GET /event_foundations/1.json
  def show
  end

  # GET /event_foundations/new
  def new
    @event_foundation = EventFoundation.new
  end

  # GET /event_foundations/1/edit
  def edit
  end

  # POST /event_foundations
  # POST /event_foundations.json
  def create
    @event_foundation = EventFoundation.new(event_foundation_params)

    respond_to do |format|
      if @event_foundation.save
        format.html { redirect_to @event_foundation, notice: 'Event foundation was successfully created.' }
        format.json { render :show, status: :created, location: @event_foundation }
      else
        format.html { render :new }
        format.json { render json: @event_foundation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_foundations/1
  # PATCH/PUT /event_foundations/1.json
  def update
    respond_to do |format|
      if @event_foundation.update(event_foundation_params)
        format.html { redirect_to @event_foundation, notice: 'Event foundation was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_foundation }
      else
        format.html { render :edit }
        format.json { render json: @event_foundation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_foundations/1
  # DELETE /event_foundations/1.json
  def destroy
    @event_foundation.destroy
    respond_to do |format|
      format.html { redirect_to event_foundations_url, notice: 'Event foundation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_foundation
      @event_foundation = EventFoundation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_foundation_params
      params.require(:event_foundation).permit(:title, :description, :points, :initialDate, :finalDate, :active, :foundation_id)
    end
end
