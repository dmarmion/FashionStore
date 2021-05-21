Rails.application.routes.draw do
  get 'collections/show'

  get 'static_pages/home'
  get 'static_pages/support'
  
  # Nicer paths
  get '/support', to: 'static_pages#support'
  
  get '/collections/:id', to: 'collections#show'
  
  get '/items', to: 'items#index'
  get '/items/:id', to: 'items#show'
  get '/items/:id/save', to: 'items#save'
  
  post '/', to: 'newsletter_recipients#new'
  
  root 'static_pages#home'
end
