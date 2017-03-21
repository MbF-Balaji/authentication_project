Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :terms
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	get '/generic', to: "default#generic"
	get '/stories', to: "default#stories"
	get '/specs', to: "default#specs"
	get '/contact', to: "default#contact"

	get '/index', to: "default#index"

	 root :to => "default#index"
#root :to => "default#generic"
end
