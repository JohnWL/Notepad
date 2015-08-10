Rails.application.routes.draw do
  devise_for :users
  
  root 'welcome#index'
  get 'welcome/index'
  
  authenticated :user do
    root 'notes#index', as:"authenticated_root"
  end
  
  resources :notes
  
end
