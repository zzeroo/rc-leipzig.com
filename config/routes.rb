RcLeipzigCom::Application.routes.draw do

  devise_for :users

  resources :articles

  resources :events do
    resources :subscribers
  end

  resources :attachments, :controller => "attachment"

  resources :users

  root :to => 'home#index'
  
  match ':controller(/:action(/:id))'
end
