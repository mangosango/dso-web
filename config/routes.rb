DsoWeb::Application.routes.draw do
  resources :concerts


  resources :staffs


  resources :auditions


  root to: 'pages#index'
  resources :events

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
end
