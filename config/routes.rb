RcLeipzigCom::Application.routes.draw do

  resources :articles

  resources :events do
    resources :subscribers
  end

  resources :attachments, :controller => "attachment"

  root :to => 'home#index'
  
  devise_for :users

  # http://guides.rubyonrails.org/routing.html#controller-namespaces-and-routing
  scope :module => "admin" do
    resources :users
  end

  match ':controller(/:action(/:id))'
end
