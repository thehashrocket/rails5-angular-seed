class ApiController < ApplicationController
	def initialize
		@version = 'v1'
	end

	def index
		head :service_unavailable
	end

	def create
		# render nothing: true, status: :service_unavailable
		head :service_unavailable
	end

	def update
		head :service_unavailable
	end

	def destroy
		head :service_unavailable
	end

	def info
		# head :service_unavailable
		render json: { name: "3form API", version: "#{@version}", environment: Rails.env }
	end

	protected
	def authenticate
		# don't use authentication in development or test environments
		# (Rails.env.development? || Rails.env.test?) || authenticate_token || render_unathorized
		true
	end

	def authenticate_token
		authenticate_with_http_token do |token|
			ApiAuthorization.exists?(api_key: token)
		end
	end

end