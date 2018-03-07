Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'leads#index'
	post '/leads/convert_to_qualified_data', to: 'leads#convert_to_qualified_data'
	resources :leads
end
