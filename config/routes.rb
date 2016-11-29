Rails.application.routes.draw do
  resources :news
  resources :clubs
  resources :players, only: [:show]
  resources :tournaments, only: [:show]
  
  get 'general/index'
  
  root 'general#index'
  get '/about' => 'general#about'
  get '/contact' => 'general#contact'
  get '/news/index' => 'news#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
