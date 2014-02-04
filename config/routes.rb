RustCache::Application.routes.draw do
  resources :locations

  resources :caches

  resources :servers

  root :to => "home#index"
  devise_for :users
end
