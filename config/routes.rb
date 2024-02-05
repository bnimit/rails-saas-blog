Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get "pricing", to: "static_pages#pricing"
  root "posts#index"
  resources :posts
  post "checkout/create", to: "checkout#create", as: "checkout_create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
