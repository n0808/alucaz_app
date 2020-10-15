Rails.application.routes.draw do
  devise_for :users
  resources :humans
  root 'humans#index'
end
