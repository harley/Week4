Rails.application.routes.draw do
  get 'line_items/create'

  resources :photos

  root "home#index"
  
  get 'home/about' => "home#about"
  get 'contact' => "contact#index"
  get 'menu' => "menu#index"
  resources :carts
  resources :line_items
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
