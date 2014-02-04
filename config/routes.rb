RustCache::Application.routes.draw do
  resources :caches

  resources :locations

  resources :servers

  root :to => "home#index"
  devise_for :users
end
