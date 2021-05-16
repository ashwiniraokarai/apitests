require 'rails_helper.rb'

RSpec.describe "status requests" do
  # make a request
  #parse the response body
  # check status of response
  # check keys
  # check response value
  describe 'GET /status' do
    it 'returns a status message' do
      get('/status')
      expect(response.status).to eq(200)
  
      # parsing the response.body returns a hash
      json = JSON.parse(response.body)
      expect(json['status']).to eq('ok')
    end
  end
end
