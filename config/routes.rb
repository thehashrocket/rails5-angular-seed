Rails.application.routes.draw do
	# get 'index/index'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	scope defaults: {format: 'json'} do
		scope module: :v1, constraints: ApiVersion.new('v1', true) do
			resources :buildings, controller: 'buildings'
		end
	end
end
