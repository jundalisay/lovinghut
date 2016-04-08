Rails.application.routes.draw do
  
  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :food_items, only: [:index, :create, :destroy, :update]
    end
  end

  resources :food_items do
    resources :orders
    resources :reviews
  end

  resources :welcome
  
  resources :menu do
    collection do
      get :lowhighprice 
      get :highlowprice
      get :abc
    end
  end
  
  get 'menu' => 'menu#index'
  get 'contact_us' => 'welcome#contact_us'
  get 'react' => 'welcome#react'

end