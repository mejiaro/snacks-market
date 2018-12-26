require 'rails_helper'

RSpec.describe 'Authentication', type: :request do 
	describe 'POST /oauth/token' do
		let!(:user) { create(:user) }
		let(:valid_credentials) do
			 {
			 		email: user.email,
			 		password: user.password,
			 		grant_type: 'password'
			 }
		end

		let(:invalid_credentials) do
			{
				email: Faker::Internet.email,
				password: Faker::Internet.password,
				grant_type: 'password'
			}
		end

	
		context 'when request is valid'	do
			before { post '/oauth/token', params: valid_credentials }
      		it 'returns an authentication token' do
		      expect(json['access_token']).not_to be_nil
		    end
		end

		context 'When request is invalid' do
	      before { post '/oauth/token', params: invalid_credentials }

	      it 'returns a failure message' do
	        expect(json['error']).to include('invalid_grant')
	      end
	    end

	end

	
end