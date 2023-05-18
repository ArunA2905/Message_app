Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :messages
  resources :users
end
