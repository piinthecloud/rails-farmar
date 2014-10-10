Rails.application.routes.draw do

  get '/markets',           to: "markets#index"
  get '/markets/new',       to: "markets#new"
  post 'markets',           to: "markets#create"

  get 'markets/create'

  get 'markets/update'

  get 'markets/:id/edit',   to: "markets#edit", as: :edit_market
  put 'markets/:id',        to: "markets#update"

  get 'markets/:id',        to: "markets#show", as: :market
  delete "markets/:id",     to: "markets#destroy", as: :delete_market

###############################################################

  get '/products/new',      to: "products#new"
  post '/products',         to: "products#create"
  get "/products",          to: "products#index"
  get "/products/:id/edit", to: "products#edit", as: :edit_product
  put "/products/:id",      to: "products#update"
  delete "/products/:id",   to: "products#destroy", as: :delete_product
  get "/products/:id",      to: "products#show", as: :product


###############################################################

  get "/vendors",           to: "vendors#index"
  get "/vendors/new",       to: "vendors#new"
  get "/vendors/old",       to: "vendors#old"
  post "/vendors/old",      to: "vendors#old"


  get  "/vendors/:id/edit", to: "vendors#edit", as: :edit_vendor
  put "/vendors/:id",       to: "vendors#update", as: :vendor
  post "/vendors",          to: "vendors#create"

  delete "/vendors/:id",    to: "vendors#destroy", as: :delete_vendor

  root "vendors#index"

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
