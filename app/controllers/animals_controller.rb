class AnimalsController < ApplicationController

  # GET /animals
  # GET /animals.json
  def index
    @animals = Animal.all
  end

  # GET /animals/1
  # GET /animals/1.json
  def show
    @animal = Animal.find(params[:id])
  end

  # GET /animals/new
  def new
    @zones = Zone.all
    @users = User.all
    @animal = Animal.new
  end

  # GET /animals/1/edit
  def edit
    @zones = Zone.all
    @users = User.all
    @animal = Animal.find(params[:id])
  end

  # POST /animals
  # POST /animals.json
  def create
    @animals = Animal.all
    @animal = Animal.create(animal_params)

  end

  # PATCH/PUT /animals/1
  # PATCH/PUT /animals/1.json
  def update
    @animals = Animal.all
    @animal = Animal.find(params[:id])

    @animal.update_attributes(animal_params)

  end

  def delete
    @animal = Animal.find(params[:animal_id])
  end
  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    @animals = Animal.all
    @animal = Animal.find(params[:id])
    @animal.destroy
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:nom, :raza, :zone_id, :any_naixement, :user_id, :avatar, :avatar_cache, :remove_avatar)
    end
end
