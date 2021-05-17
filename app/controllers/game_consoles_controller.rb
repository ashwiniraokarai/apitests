class GameConsolesController < ApplicationController

  def index
    consoles = game_consoles
    if params[:manufacturer]
      consoles = consoles.select do |console|
        console[:manufacturer] == params[:manufacturer]
      end
    end

    render json: { 'status' => 'ok', 'consoles' => consoles }
  end

  def create
    consoles = game_consoles
    consoles << { name: params[:name], manufacturer: params[:manufacturer] }
    render json: { 'status' => 'created', 'consoles' => consoles.last}
  end

  # resource the end point revolves around (in the real world, this would be a model)
  def game_consoles
    consoles = [ { name: "NES", manufacturer: "Nintendo" },
               { name: "XBOX", manufacturer: "Microsoft" },
               { name: "PS2", manufacturer: "Sony"}]
  end
end
