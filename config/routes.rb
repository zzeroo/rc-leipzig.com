RcLeipzigCom::Application.routes.draw do
  devise_for :users

  resources :events do
    resources :subscribers
  end

  resources :users

  root :to => 'home#index'
  
  match ':controller(/:action(/:id))'
end
