Rails.application.routes.draw do
  resources :stories
resources :default 
  mount Ckeditor::Engine => '/ckeditor'
  resources :terms
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	get '/generic', to: "default#generic"
	get '/stories', to: "default#stories"
	get '/specs', to: "default#specs"
	get '/contact', to: "default#contact"

	get '/index', to: "default#index"

    get '/show', to:"default#show"
	 root :to => "default#index2"
#root :to => "default#generic"
# match '/conta',      to: 'conta#new',           via: 'get'
# match '/conta',      to: 'conta#create',        via: 'post'
# get '/stories', to: "stories#index"
get '/generics', to: "stories#index"
end
