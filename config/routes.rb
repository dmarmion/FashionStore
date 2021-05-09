Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/support'
  
  # Nicer paths
  get '/support', to: 'static_pages#support'
  
  root 'static_pages#home'
  
  resources :items
end
