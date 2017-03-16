Rails.application.routes.draw do

	get '/generic', to: "default#generic"
	get '/stories', to: "default#stories"
	get '/specs', to: "default#specs"
	get '/contact', to: "default#contact"

	root :to => "default#index"
end
