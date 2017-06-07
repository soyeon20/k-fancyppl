Rails.application.routes.draw do
 
  root to:'index#index'
  get '/festival/:id/:page' => 'index#festival'
  get '/festival/:id/' => 'index#festival'
  get '/events/:id' => 'index#events'
  
  get '/fest' => 'index#fest'
  get '/groups/:id' => 'index#groups'
  get '/makemeeting' => 'index#makemeeting'
  post '/make_meeting'=> 'index#make_meeting'
  get '/groups_backup' => 'index#groups_backup'
  get '/meeting' => 'index#meeting'
  
  
  get '/getid/:key' => 'idvarifier#getid'
  
  get 'evparse/save'
  post 'evparse/back_save'
  get 'edit/:id' => 'evparse#edit'
  get 'evparse/list'
  get 'evparse/list/:id' =>'evparse#selected'
  
  
  
  post 'tipwrite' =>'index#tipwrite'
#get '/festival' => 'index#festival'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'welcome#index'

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
