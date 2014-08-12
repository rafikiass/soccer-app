Rails.application.routes.draw do

  

devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout', :sign_up => 'sign-up'}

  root 'favorites#index'
  get '/leagues' => 'leagues#leagues', as: :leagues
  get '/leagues/new' => 'leagues#new', as: :leagues_new
  post '/leagues' => 'leagues#create', as: :leagues_create
  get '/leagues/:id' => 'leagues#show', as: :league
  get 'leagues/favorites' => 'leagues#show'
  get '/leagues/:id/edit' => 'leagues#edit', as: :leagues_edit
  patch '/leagues/:id' => 'leagues#update', as: :leagues_update
  delete '/leagues/:id' => 'leagues#destroy', as: :leagues_destroy

  get '/teams' => 'teams#teams', as: :teams
  # get '/teams/new' => 'teams#new', as: :teams_new
  # post '/teams' => 'teams#create', as: :teams_create
  # get 'teams/:id' => 'teams#show', as: :team
  # get '/teams/:id/edit' => 'teams#edit', as: :teams_edit
  # patch '/teams/:id' => 'teams#update', as: :teams_update
  # delete '/teams/:id' => 'teams#destroy', as: :teams_destroy

resources :teams

get '/players' => 'players#players', as: :players
resources :players

namespace :leagues do
  resources :favorites
end
  

resources :favorites
get '/favorites/leagues' => 'favorites#show'
get '/favorites/teams' => 'favorites#show'
get '/favorites/players' => 'favorites#show'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
