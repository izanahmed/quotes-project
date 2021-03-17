Rails.application.routes.draw do
  
  get '/about' => 'home#about'
  
  get '/allquotes' => 'allquotes#manyquotes'
  
  get '/signup' => 'registrations#new'

  post '/signup' => 'registrations#create'
  
  delete '/logout' => 'sessions#destroy'

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  get '/addquote' => 'addquote#new'
  
  post '/addquote' => 'addquote#create'

  get '/profile' => 'home#profile'
  
  root 'home#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
