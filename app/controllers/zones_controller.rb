class ZonesController < ApplicationController
  # before_action :set_zone, only: [:show, :edit, :update, :destroy]

  # GET /zones
  # GET /zones.json
  def index
    @zones = Zone.all
  end

  # GET /zones/1
  # GET /zones/1.json
  def show
    @zone = Zone.find(params[:id])
  end

  # GET /zones/new
  def new
    @zone = Zone.new
  end

  # GET /zones/1/edit
  def edit
    @zone = Zone.find(params[:id])
  end

  # POST /zones
  # POST /zones.json
  def create
    @zones = Zone.all
    @zone = Zone.create(zone_params)
  end

  # PATCH/PUT /zones/1
  # PATCH/PUT /zones/1.json
  def update
    @zones = Zone.all
    @zone = Zone.find(params[:id])
    @zone.update_attributes(zone_params)
  end

  def delete
    @zone = Zone.find(params[:zone_id])
  end
  # DELETE /zones/1
  # DELETE /zones/1.json
  def destroy
    @zones = Zone.all
    @zone = Zone.find(params[:id])
    @zone.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_zone
    #   @zone = Zone.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zone_params
      params.require(:zone).permit(:nom, :clima, :temperatura, :humitat)
    end
end
