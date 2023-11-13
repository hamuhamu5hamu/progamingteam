Rails.application.routes.draw do
  get 'blogs/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root 'players#index'

  root to: 'blogs#home'

  get 'players/index' => 'players#index'

  get 'blogs/home' => 'blogs#home'

  get 'posts/index' => 'posts#index'

  get 'posts/result' => 'posts#result'

  get 'posts/home' => 'posts#home'

  resources :posts

  resources :blogs

  resources :players
end
