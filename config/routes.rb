DsoWeb::Application.routes.draw do
  
  resources :pages


  resources :abouts


  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :concerts


  resources :staffs


  resources :auditions


  root to: 'pages#index'
  resources :events

end
