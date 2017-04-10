module AdminAuthorization
	def is_admin?
		
		return true if current_user.admin?
		#else
		raise(ExceptionHandler::AuthorizationError, Message.unauthorized)
	end
end