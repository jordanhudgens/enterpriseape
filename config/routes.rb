Enterpriseape::Application.routes.draw do


  resources :items

  resources :employees

  resources :companies do 
    collection { post :import }
  end

  devise_for :users
  get "welcome/index"
  get "welcome/about"
  get "welcome/contact"
  get "welcome/faq"
  get "welcome/pricing"
  get "welcome/features"
  
  resources :invoices do
    resources :purchases, except: [:index, :show], controller: 'invoices/purchases'
  end

  root to: 'welcome#index'
  
end
