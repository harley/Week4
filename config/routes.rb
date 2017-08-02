Rails.application.routes.draw do
  # photos
  # GET  /photos          => photos#index
  # GET  /photos/new      => photos#new
  # POST /photos          => photos#create
  # GET  /photos/:id      => photos#show
  # GET  /photos/:id/edit => photos#edit
  # PATCH /photos/:id     => photos#update
  # DELETE /photos/:id    => photos#destroy
  resources :photos do
    resources :comments
  end
  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
