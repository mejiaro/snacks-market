module ControllerSpecHelper

	def admin_headers
		token = get_token(admin.id).token
		{
			"Authorization" => "Bearer #{token}",
			"Content-Type" => "application/json"
		}
	end


	def valid_headers
		token = get_token(user.id).token
		{

			"Authorization" => "Bearer #{token}",
			"Content-Type" => "application/json"
		}
	end

	def invalid_headers
		{
			"Authorization" => nil,
			"Content-Type" => "application/json"	
		}		
	end
end