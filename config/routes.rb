Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home;
  root 'home#index'
  get 'test'=>'home#show'

end
