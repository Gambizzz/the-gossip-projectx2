Rails.application.routes.draw do
  root 'static_pages#index'

  get '/static_pages/index', to: 'static_pages#index'
  get '/static_pages/team', to: 'static_pages#team'
  get '/static_pages/contact', to: 'static_pages#contact'
  get '/dynamic_pages/welcome/:first_name', to: 'dynamic_pages#welcome'
  get '/dynamic_pages/home', to: 'dynamic_pages#home'
  get '/dynamic_pages/show_potin/:id', to: 'dynamic_pages#show_potin'
  get '/dynamic_pages/show_author/:id', to: 'dynamic_pages#show_author'

  resources :gossips


  get "up" => "rails/health#show", as: :rails_health_check
end
