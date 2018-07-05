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
      name: params[:input_name],
      breed: params[:input_breed],
      color: params[:input_color],
      weight: params[:input_weight]
    )
    @horse.save
    render "show.json.jbuilder"
  end

  def update
    horse_id = params[:id]
    @horse = Horse.find_by(id: horse_id)
    @horse.name = params[:input_name] || @horse.name
    @horse.breed = params[:input_breed] || @horse.breed
    @horse.color = params[:input_color] || @horse.color
    @horse.weight = params[:input_weight] || @horse.weight
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
