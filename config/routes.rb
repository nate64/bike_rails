Rails.application.routes.draw do
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'

  resources :parts
end


# Rails.application.routes.draw do

#   get 'static_pages/home'
#   get 'static_pages/about'

#   resources :parts #this almost killed me
  
#   #this automatically includes all basic crud routes for parts
# end
