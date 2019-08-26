require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  describe 'GET #homepage' do
    context 'when the homepage responds' do
      it 'returns a success response' do
        expect(response).to be_successful
      end
    end
  end

  describe 'GET #show' do
    context 'when the recipe details responds' do
      it 'returns a success response' do
        expect(response).to be_successful
      end
    end
  end
end
