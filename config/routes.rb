Rails.application.routes.draw do
  
  root 'mainpage#index'
  get '/home', to: 'mainpage#index'
  
  #get '/recipes', to: 'recipes#index'
  #et 'recipes/new', to: 'recipes#index', as: 'new_recipe'
  #post '/recipes', to: 'recipes#create'
  #get '/recipes/:id/edit', to: 'recipes#edit', as: 'edit_recipe'
  #patch '/recipes/:id', to: 'recipes#update'
  #get 'recipes/:id', to: 'recipes#show', as: 'recipe'
  #delete 'recipes/:id', to: 'recipes#destroy'

  resources :recipes

end
