Rails.application.routes.draw do
  devise_for :users
  
  get 'collections/show'

  get 'static_pages/home'
  get 'static_pages/saved_list'
  get 'static_pages/support'
  
  # Nicer paths
  get '/saved_list', to: 'static_pages#saved_list'
  get '/support', to: 'static_pages#support'
  
  get '/collections/:id', to: 'collections#show'
  
  get '/items', to: 'items#index'
  get '/items/:id', to: 'items#show'
  get '/items/:id/save', to: 'items#save'
  get '/items/:id/add_to_bag', to: 'items#add_to_bag'
  post '/items/:id/add_to_bag', to: 'items#add_to_bag'
  
  post '/', to: 'newsletter_recipients#new'
  
  root 'static_pages#home'
end
