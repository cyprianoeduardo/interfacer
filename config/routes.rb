Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  root :to => "home#index"

  get 'pages/index'
  # root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
