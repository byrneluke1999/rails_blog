Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    #because comments are nested within posts - otherwise a route would be defined like for posts
    resources :comments
  end
  root "posts#index"
end
