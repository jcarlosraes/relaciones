Rails.application.routes.draw do
  get 'login/index'

  get 'threemodal/index'

  get 'twomodal/index'

  get 'onemodal/index'

	#root 'contracts#index'
  resources :renovations
  resources :siteviews
  resources :contracts
  resources :devices
  resources :suppliers
  resources :locations
  resources :users
  
  get 'pagina_principal' => 'paginaxs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  
  post 'login/prueba' => 'login#prueba'
end
