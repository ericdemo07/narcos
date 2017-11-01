Rails.application.routes.draw do
  get 'admin/index'

  #get 'users/index'

  get 'welcome/index'

  resources :users do
    resources :articles
  end

  resources :articles

  root 'welcome#index'
end
