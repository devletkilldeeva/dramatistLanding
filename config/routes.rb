Rails.application.routes.draw do
  get 'landing/index'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "landing#index"
  root :to => 'landing#index'
end
