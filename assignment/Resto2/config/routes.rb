Rails.application.routes.draw do
  resources :photos

  root "home#index"
  
  get 'home/about' => "home#about"
  get 'contact' => "contact#index"
  get 'menu' => "menu#index"
  get 'cart' => "cart#index"

  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
