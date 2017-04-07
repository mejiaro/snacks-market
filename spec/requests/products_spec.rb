require 'rails_helper'

RSpec.describe 'Products API', type: :request do
	#initialize test data
	let(:user) { create(:user) }
	let!(:products) { create_list(:product, 10) }
	let(:product_id) { products.first.id }
	let(:headers) { valid_headers}


	#tests for get /prodcuts
	describe 'GET /products' do
		before { get '/products', params: {}, headers: headers }

		it 'returns products' do
			expect(json).not_to be_empty
			expect(json.size).to eq(10) #the numbers of records created
		end

		it 'returns status code 200' do
			expect(response).to have_http_status(200)
		end

	end

	#tests for get /products/:id

	describe 'GET /products/:id' do
		before {get "/products/#{product_id}", params: {}, headers: headers}

		context 'when the record exists' do
			it 'returns the product' do
				expect(json).not_to be_empty
				expect(json['id']).to eq(product_id)
			end

			it 'returns status code 200' do
				expect(response).to have_http_status(200)
			end
		end

		context 'when the record doesnt exist' do
			let(:product_id) { 100 }

			it 'returns 404' do
				expect(response).to have_http_status(404)
			end

			it 'returns a not found message' do
				expect(response.body).to include("Couldn't find Product")
			end

		end

	end

	describe 'POST /products' do

		#valid
		let(:valid_attributes) do

			{ name: 'Overwatch', stock: '6', price: '39.99' }.to_json

			context 'when the request is valid' do
				before { post '/products', params: valid_attributes, headers: headers}

				it 'creates a product' do
					expect(json['name']).to eq('Overwatch')
					expect(json['stock']).to eq(6)
					expect(json['price']).to eq('39.99')
				end

				it 'returns 201' do
					expect(response).to have_http_status(201)
				end

			end

			context 'the request is invalid' do
				before { post '/products', params: { name: 'Starcraft'}, headers: headers }

				it 'returns 422' do
					expect(response).to have_http_status(422)
				end

				it 'returns a validation failure message' do
					expect(response.body).to match(/Validation failed:/)
				end
			end

		end
	end


	#test for PUT /products/:id

	describe 'PUT /products/:id' do
		let(:valid_attributes) { { name: 'Heartstone' }.to_json }

		context 'when the record exists' do
			before { put "/products/#{product_id}", params: valid_attributes, headers: headers }

			it 'updates the record' do
				expect(response.body).to be_empty
			end

			it 'returns 204' do
				expect(response).to have_http_status(204)
			end			
		end
	end

	describe 'DELETE /products/:id' do
		
		before { delete "/products/#{product_id}", params: {}, headers: headers}

		it 'returns 204' do
			expect(response).to have_http_status(204)
		end

	end

end