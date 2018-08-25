class FoundationTypesController < ApplicationController
  before_action :set_foundation_type, only: [:show, :edit, :update, :destroy]

  # GET /foundation_types
  # GET /foundation_types.json
  def index
    @foundation_types = FoundationType.all
  end

  # GET /foundation_types/1
  # GET /foundation_types/1.json
  def show
  end

  # GET /foundation_types/new
  def new
    @foundation_type = FoundationType.new
  end

  # GET /foundation_types/1/edit
  def edit
  end

  # POST /foundation_types
  # POST /foundation_types.json
  def create
    @foundation_type = FoundationType.new(foundation_type_params)

    respond_to do |format|
      if @foundation_type.save
        format.html { redirect_to @foundation_type, notice: 'Foundation type was successfully created.' }
        format.json { render :show, status: :created, location: @foundation_type }
      else
        format.html { render :new }
        format.json { render json: @foundation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foundation_types/1
  # PATCH/PUT /foundation_types/1.json
  def update
    respond_to do |format|
      if @foundation_type.update(foundation_type_params)
        format.html { redirect_to @foundation_type, notice: 'Foundation type was successfully updated.' }
        format.json { render :show, status: :ok, location: @foundation_type }
      else
        format.html { render :edit }
        format.json { render json: @foundation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foundation_types/1
  # DELETE /foundation_types/1.json
  def destroy
    @foundation_type.destroy
    respond_to do |format|
      format.html { redirect_to foundation_types_url, notice: 'Foundation type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foundation_type
      @foundation_type = FoundationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foundation_type_params
      params.require(:foundation_type).permit(:name, :description, :active)
    end
end
