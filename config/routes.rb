Rails.application.routes.draw do

  root to: 'posts#index'

  resources :posts do
    resources :comments, only: [:new, :create, :edit, :update, :destroy]
  end
end
