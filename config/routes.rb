Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  
  root to: "home#index"

  resources :categories, except: [:edit, :update] do
    resources :purchases, except: [:edit, :update]
  end
end
