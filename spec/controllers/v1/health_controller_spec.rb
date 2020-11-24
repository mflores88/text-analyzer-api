# frozen_string_literal: true

require 'rails_helper'

RSpec.describe V1::HealthController, type: :controller do
  describe 'GET #ping' do
    it 'returns http success' do
      get :ping
      expect(response).to have_http_status(:success)
      expect(response.parsed_body['message']).to eq('pong')
    end
  end
end
