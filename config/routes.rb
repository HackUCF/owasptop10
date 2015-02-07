Rails.application.routes.draw do

  get 'owasp1' => 'owasp1#index'

  get 'owasp2/' => 'owasp2#index'
  post 'owasp2/login' => 'owasp2#login'

  get 'owasp3/' => 'owasp3#index'
  post 'owasp3' => 'owasp3#add'
  get 'owasp3/clear'

  get 'owasp4/' => 'owasp4#index'
  get 'owasp4/pw/:id' => 'owasp4#pw'

  get 'owasp5/' => 'owasp5#index'
  get 'owasp5/show/:id' => 'owasp5#show'

  get 'owasp6/' => 'owasp6#index'
  get 'owasp6/admin'

  get 'owasp7/' => 'owasp7#index'
  post 'owasp7/login' => 'owasp7#login'
  get 'owasp7/add' => 'owasp7#add'
  get 'owasp7/logout' => 'owasp7#logout'
  get 'owasp7/clear' => 'owasp7#clear'

  get 'owasp10/' => 'owasp10#index'
  get 'owasp10/index' => 'owasp10#index'
  get 'owasp10/login' => 'owasp10#login'
  post 'owasp10/do_login' => 'owasp10#do_login'

  get 'owasp10/logout' => 'owasp10#logout'



  root 'application#index'


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
