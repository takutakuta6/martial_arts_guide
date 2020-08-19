Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "homes#index"
  resources :players, only: [:index, :show]
  resources :game_movies, only: [:index, :show] do
    resources :game_comments, only: [:create, :destroy]
    resource :game_likes, only: [:create, :destroy]
  end
end
