VirtualWalk::Application.routes.draw do
  resources :homes

  resources :user_sessions

  resources :registrations

  resources :roles

  resources :users

  resources :events

  resources :sponsors

  resources :teams

  resources :activities

  resources :agencies

  match 'login' => 'user_sessions#new'
  match 'logout' => 'user_sessions#destroy'
  
  root :to => 'homes#index'
  
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do        
        #API routes
        match 'users/login', :to => 'users#login'
        match 'users/validate_token/:token', :to => 'users#validate_token'
        match 'events/', :to => 'events#index'
        match 'events/:eventid', :to => 'events#show' 
        match 'events/:eventid/teams', :to => 'events#teams'   
    end
  end


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
