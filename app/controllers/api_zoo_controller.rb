class ApiZooController < ApplicationController
  before_action :set_zone, only: [:show, :edit, :update, :destroy]
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  # GET /zones
 def index
   @zones = Zone.all
   json_response(@zones)
 end

   # GET /animals
  def index
    @animals = Animal.all
    json_response(@animals)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zone
      @zone = Zone.find(params[:id])
    end
    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zone_params
      params.require(:zone).permit(:nom, :clima, :temperatura, :humitat)
    end
    def animal_params
      params.require(:animal).permit(:nom, :raza, :zone_id, :any_naixement, :user_id, :avatar, :avatar_cache, :remove_avatar)
    end
end
