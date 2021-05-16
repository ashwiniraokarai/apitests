require "rails_helper"

RSpec.describe "game consoles" do
  describe "GET game consoles" do
    it "returns a status message" do
      get '/game_consoles'
      expect(response.status).to eq(200)

      json = JSON.parse(response.body)
      expect(json['status']).to eq('ok')
    end

    it "returns an array of game consoles" do
      get '/game_consoles'
      expect(response.status).to eq(200)

      json = JSON.parse(response.body)
      expect(json.keys).to match_array(["status", "consoles"])
    end
  end
end
