class ApiVersion

	def initialize(version, default = false)
		@version, @default = version, default
	end

	def matches?(request)
		@default || check_headers(request.headers)
	end

	private
	def check_headers(headers)
		accept = headers['Accept']
		accept && accept.include?("application/vnd.3form.#{@version}+json")
	end
end