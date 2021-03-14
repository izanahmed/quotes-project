Rails.application.routes.draw do
  
  get '/future' => 'home#future'
  get '/past' => 'home#past'
  
  get '/allquotes' => 'allquotes#manyquotes'
  
  
  get '/addquote' => 'addquote#new'
  
  post '/addquote' => 'addquote#create'
  
  root 'home#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
