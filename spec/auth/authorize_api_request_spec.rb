require 'rails_helper'

RSpec.describe AuthorizeApiRequest do
	let(:user) { create(:user) }
	let(:header) { { 'Authorization' => token_generator(user.id) } }
	#invalid request
	subject(:invalid_request_obj) { described_class.new({}) }
	
	#valid request
	subject(:request_obj) { described_class.new(header) }

	describe 'call' do
		context 'when the request is valid' do
			
			context 'when the token is missing' do
				it 'raises a MissingToken error' do
					expect { invalid_request_obj.call }.to raise_error(ExceptionHandler::MissingToken, 'Missing token')
				end
			end

			context 'when the token is invalid' do
				subject(:invalid_request_obj) do
					described_class.new('Authorization' => token_generator(5))
				end

				it 'raises and InvalidToken error' do
					expect { invalid_request_obj.call }.to raise_error(ExceptionHandler::InvalidToken, /Invalid token/)
				end

			end

			context 'when token is expired' do
				let(:header) { { 'Authorization' => expired_token_generator(user.id)} }
				subject(:request_obj) { described_class.new(header) }

				it 'raises ExceptionHandler::ExpiredSignature error' do
					expect { request_obj.call }.to raise_error(ExceptionHandler::ExpiredSignature, /Signature has expired/)
				end
			end


		end


	end
end
