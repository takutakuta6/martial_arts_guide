Rails.application.routes.draw do
  root "homes#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
                       registrations: "users/registrations",
                     }
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#new_guest"
  end
  resources :players, only: [:index, :show]
  resources :game_movies, only: [:index, :show] do
    resources :game_comments, only: [:create, :destroy]
    resource :game_likes, only: [:create, :destroy]
  end
end
