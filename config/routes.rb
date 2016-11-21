Rails.application.routes.draw do
  get 'general/index'
  
  root 'general#index'
  get '/about' => 'general#about'
  get '/contact' => 'general#contact'
  get '/news/show' => 'news#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
