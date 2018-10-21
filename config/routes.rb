Rails.application.routes.draw do
  get 'new_song/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home;
  root 'home#index'
  get 'test/:id'=>'home#test'
  resources :new_song
  resources :search


end
