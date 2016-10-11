class BuildingsController < ApplicationController

	def index
		buildings = Building.all

		render json: {status: 'SUCCESS', message: 'Loaded all posts', data: buildings}, status: :ok
	end

end