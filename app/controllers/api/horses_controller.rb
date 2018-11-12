class Api::HorsesController < ApplicationController
  def index
    @horses = Horse.all
    render "index.json.jbuilder"
  end

  def show
    horse_id = params[:id]
    @horse = Horse.find_by(id: horse_id)
    render "show.json.jbuilder"
  end

  def create
    @horse = Horse.new(
      name: params[:name],
      breed: params[:breed],
      color: params[:color],
      weight: params[:weight]
    )
    @horse.save
    render "show.json.jbuilder"
  end

  def update
    horse_id = params[:id]
    @horse = Horse.find_by(id: horse_id)
    @horse.name = params[:name] || @horse.name
    @horse.breed = params[:breed] || @horse.breed
    @horse.color = params[:color] || @horse.color
    @horse.weight = params[:weight] || @horse.weight
    @horse.save
    render "show.json.jbuilder"
  end

  def destroy
    horse_id = params[:id]
    @horse = Horse.find_by(id: horse_id)
    @horse.destroy
    render json: {message: "You removed the horse from the database."}
  end
end
