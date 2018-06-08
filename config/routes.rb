Rails.application.routes.draw do
  
  
  get '/' => 'home#index'

  ################# user start ###################################################
  get '/login' => 'user#login'
  post '/login' => 'user#login'
  get '/logout' => 'user#logout'
  post '/remote_login' => 'user#remote_login'
  
  post '/get_usernames' => 'user#usernames'
  get '/get_usernames' => 'user#usernames'
  post '/get_first_names' => 'user#first_names'
  post '/get_last_names' => 'user#last_names'
  
  post '/remote_create_user' => 'user#create'
  post '/user_list' => 'user#list'
  get '/user_list' => 'user#list'
  post '/user_details' => 'user#details'
  get '/user_details' => 'user#details'
  post '/user_role' => 'user#role'
  get '/user_role' => 'user#role'
  post '/remote_change_password' => 'user#change_password'
  post '/remote_update_user' => 'user#update'
  ################# user ends ###################################################

  ################# demographics start ###################################################

  post 'demographics/countries' 
  post 'demographics/districts'
  post 'demographics/traditional_authorities'
  post 'demographics/villages'

  post 'demographics/given_names'
  post 'demographics/family_names'
  ################# demographics ends ###################################################

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
  root 'home#index'
end
