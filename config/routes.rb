Rails.application.routes.draw do
  root 'categories#index'
  resources :categories
  resources :articles do
    resources :votes, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tags
	get '/signup', to: 'users#new'
  	resources :users

  	get    '/login',   to: 'sessions#new'
	post   '/login',   to: 'sessions#create'
	delete '/logout',  to: 'sessions#destroy'
end
