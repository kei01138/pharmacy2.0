Rails.application.routes.draw do
  root 'introductions#index'
  devise_for :users, :controllers => { omniauth_callbacks: 'user/omniauth_callbacks' }
  get 'introductions/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
