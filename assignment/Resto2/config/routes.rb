Rails.application.routes.draw do
  
  root "home#index"
  
  get 'menu' => 'menu#index'
  get 'index' => "cart#index"

  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
