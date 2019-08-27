require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  describe 'GET #Homepage' do
    it 'should return success' do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
end