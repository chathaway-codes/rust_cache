RustCache::Application.routes.draw do
  resources :bounties

  resources :caches
  get '/caches/:id/share', to: 'caches#share', as: 'cach_share'
  post '/caches/:id/share', to: 'caches#share_create', as: 'user_caches'

  resources :locations

  resources :servers

  root :to => "home#index"

  unless ARGV.join.include?('assets:precompile')
    devise_for :users
  end
end
