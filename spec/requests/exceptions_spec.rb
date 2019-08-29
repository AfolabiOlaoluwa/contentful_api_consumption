require 'rails_helper'

RSpec.describe 'Exceptions for Production', type: :request do
  describe '#show' do
    context 'when users hits pages not existing' do
      it 'should returns a success response' do
        get '/exceptions/show'
        expect(response).to be_successful
      end

      it 'should returns a 200 response' do
        get '/exceptions/show'
        expect(response).to have_http_status '200'
      end
    end
  end
end