require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  describe '#homepage' do
    context 'when the homepage responds' do
      it 'should returns a success response' do
        get root_path
        expect(response).to be_successful
      end

      it 'should returns a 200 response' do
        get root_path
        expect(response).to have_http_status '200'
      end
    end
  end

  describe '#show' do
    context 'when the recipe details responds' do
      it 'returns a success response' do
        get recipe_path('437eO3ORCME46i02SeCW46')
        expect(response).to be_successful
      end

      it 'should returns a 200 response' do
        get recipe_path('437eO3ORCME46i02SeCW46')
        expect(response).to have_http_status '200'
      end
    end
  end
end