RcLeipzigCom::Application.routes.draw do
  # get "attachment/index"
  # get "attachment/show"
  # get "attachment/new"
  # get "attachment/create"
  # get "attachment/destroy"

  devise_for :users

  resources :events do
    resources :subscribers
  end

  resources :attachments, :controller => "attachment"

  resources :users

  root :to => 'home#index'
  
  match ':controller(/:action(/:id))'
end
