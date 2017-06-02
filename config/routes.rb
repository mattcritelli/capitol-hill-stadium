Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events do
    resources :tickets
  end
  resources :users

  root 'pages#home'
end
