Rails.application.routes.draw do
resource :lists

  get 'say/hello'

  get 'say/goodbye'

  get 'say/about'

  get 'files' => "files#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
