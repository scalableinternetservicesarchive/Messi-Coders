Rails.application.routes.draw do
  resources :news
  resources :clubs
  
  get 'general/index'
  
  root 'general#index'
  get '/about' => 'general#about'
  get '/contact' => 'general#contact'
  get '/news/index' => 'news#index'
  # get 'tournaments/show' =>'tournaments#show'
  get 'clubs/show' => 'clubs#show'
  get 'players/show' => 'players#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
