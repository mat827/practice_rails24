Rails.application.routes.draw do

  root 'homes#index'
  get 'homes/about'

  devise_for :users
  resources :users,only: [:show,:edit,:index,:update]
  resources :books,only: [:index,:show,:edit,:create,:update,:destroy] do
  	resource :favorites, only: [:create, :destroy]
  	resource :book_comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
