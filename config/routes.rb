Rails.application.routes.draw do
  resources :cards do
    resources :creplies, only: [:create, :destroy]
  end
  resources :handouts do
    resources :hreplies, only: [:create, :destroy]
  end
  resources :notices do
    resources :nreplies, only: [:create, :destroy]
  end
  devise_for :users, :controllers => { omniauth_callbacks: 'user/omniauth_callbacks' }
  get '/introductions/user_information', to: 'introductions#user_information', as: 'user_information'
  root 'introductions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
