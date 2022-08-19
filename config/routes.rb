  Rails.application.routes.draw do
    get 'bookmarks/new'
    get 'bookmarks/create'
    get 'bookmarks/destroy'
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    root to: "lists#index"
    resources :lists do
      resources :bookmarks, only: [:new, :create]
    end

      resources :bookmarks, only: :destroy
    # Defines the root path route ("/")
    # root "lists#index"
    # resources :reviews, only: [:destroy]
  end

  # Defines the root path route ("/")
