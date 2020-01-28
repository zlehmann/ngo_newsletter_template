Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :posts, only: [:index, :show]
    resources :events, only: [:index, :show]
  end

  namespace :admin do
    resources :posts
    resources :events
  end

end
