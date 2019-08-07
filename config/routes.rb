Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homework#index'
  resources :homework, only: [:new, :create, :index]
  get '/homework' => 'homework#index'
  get '/homework/new' => 'homework#new'
  post '/homeworks' => 'homework#create'
end
