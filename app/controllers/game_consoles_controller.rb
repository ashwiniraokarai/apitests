class GameConsolesController < ApplicationController
  def index
    render json: { 'status' => 'ok', 'consoles' => [  { name: "NES", manufacturer: "Nintendo" },
                                                     { name: "XBOX", manufacturer: "Microsoft" },
                                                     { name: "PS2", manufacturer: "Sony"}]}

  end
end
