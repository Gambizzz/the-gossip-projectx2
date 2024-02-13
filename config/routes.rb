Rails.application.routes.draw do
  root 'static_pages#index'

  get '/static_pages/index', to: 'static_pages#index'
  get '/static_pages/team', to: 'static_pages#team'
  get '/static_pages/contact', to: 'static_pages#contact'
  get '/dynamic_pages/welcome/:first_name', to: 'dynamic_pages#welcome'
  get '/dynamic_pages/home', to: 'dynamic_pages#home'
  get '/dynamic_pages/show_potin/:id', to: 'dynamic_pages#show_potin'
  get '/show_author/:id', to: 'dynamic_pages#show_author'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

end
