class GameConsolesController < ApplicationController

  def index
    consoles = [ { name: "NES", manufacturer: "Nintendo" },
                 { name: "XBOX", manufacturer: "Microsoft" },
                 { name: "PS2", manufacturer: "Sony"}]

    if params[:manufacturer]
      consoles = consoles.select do |console|
        console[:manufacturer] == params[:manufacturer]
      end
    end

    render json: { 'status' => 'ok', 'consoles' => consoles }
  end

  # def create
  #   consoles.name =
  #   consoles.manufacturer
  #   render json: { }
  # end
end
