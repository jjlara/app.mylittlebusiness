Rails.application.routes.draw do
  resources :myprofiles

  resources :fotosprofiles

  resources :promos

  resources :horarios_configs

  resources :gadgets

  resources :otros

  resources :pruebas

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :pins
  

  get 'welcome/index'

  get 'welcome/contacto'

  post 'welcome/contacto'
  
  get 'mypins' => 'pins#mypins'

  get 'apiProductos' => 'pins#apiProductos'

  get 'precio' => 'pins#precio'

  get 'stock' => 'pins#stock'

  get 'referencia' => 'pins#referencia'
  
  get 'pinsof/:user_id' => 'pins#pinsof', :as => "pinsof"

  get 'mygadgets' => 'gadgets#mygadgets'

  get 'mygadgets' => 'gadgets#index'

  get 'apiGadgets' => 'gadgets#apiGadgets'

  get 'horarios_configs' => 'horarios_configs#index'

  get 'apiHorarios' => 'horarios_configs#apiHorarios'

  get 'myhorarios_configs' => 'horarios_configs#myhorarios_configs'

  get 'promos' => 'promos#index'

  get 'apiPromos' => 'promos#apiPromos'

  get 'fotosprofiles' => 'fotosprofiles#index'

  get 'apiFotosperfil' => 'fotosprofiles#apiFotosperfil'

  get 'myfotosprofiles' => 'fotosprofiles#myfotosprofiles'

  get 'myprofiles' => 'myprofiles#index'

  get 'apiMiperfil' => 'myprofiles#apiMiperfil'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
