Rails.application.routes.draw do
  resources :wallpapers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'wallpapers#index'

end
