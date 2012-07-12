RcLeipzigCom::Application.routes.draw do
  resources :events do
    resources :subscribers
  end

  root :to => 'home#index'
  
  match ':controller(/:action(/:id))'
end
