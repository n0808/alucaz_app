Rails.application.routes.draw do
  resources :humans
  root 'humans#index'
end
