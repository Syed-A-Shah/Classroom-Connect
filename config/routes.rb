Rails.application.routes.draw do
  root 'pages#home'
  # root 'homeworks#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :homeworks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
