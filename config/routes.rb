Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :items do 
    resources :joint_card_items
  end
  resources :carts
  resources :devise
  resources :user
end

