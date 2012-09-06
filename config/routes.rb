RcLeipzigCom::Application.routes.draw do

  resources :articles

  resources :events do
    resources :subscribers
  end

  resources :attachments, :controller => "attachment"

  root :to => 'home#index'
  
  devise_for :users

  match ':controller(/:action(/:id))'
end
