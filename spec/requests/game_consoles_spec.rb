require "rails_helper"

RSpec.describe "game consoles" do
  let (:json) {JSON.parse(response.body)}

  describe "GET game consoles" do
    it "returns a status message" do
      get '/game_consoles'
      expect(response.status).to eq(200)
      expect(json['status']).to eq('ok')
    end

    it "returns an array of game consoles" do
      get '/game_consoles'
      expect(response.status).to eq(200)
      expect(json.keys).to match_array(["status", "consoles"])

      json["consoles"].each do |console|
        expect(console.keys).to match_array(["name", "manufacturer"])
        expect(console["name"]).not_to be_empty
        expect(console["manufacturer"]).not_to be_empty
      end
    end

    it "returns the consoles for a specified manufacturer" do
      get '/game_consoles', params: {manufacturer: "Nintendo"}
      expect(json["consoles"]).to contain_exactly({ "name" => "NES", "manufacturer" => "Nintendo"})
    end
  end

  # describe "POST to game consoles" do
  #   it "creates and adds a new game console to the list" do
  #     post "/game_consoles"
  #     expect(response.status).to eq(201)
  #   end
  # end
end
