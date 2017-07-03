Rails.application.routes.draw do

  namespace :admin do
    get 'users/index'
  end

  #Administración
  namespace :admin do     
    resources :settings do
	  collection do
	    get :products
	  end
	end 
    resources :users
  end

  root 'products#index'  

  get 'categories/index'

  devise_for :users

  resources :products
  
  resources :categories
end
