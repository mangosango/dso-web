DsoWeb::Application.routes.draw do
  
  resources :prospies


  resources :orchestra_sections


  resources :contacts


  resources :pages

  resources :abouts
  resources :about, :controller => "abouts"

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :concerts


  resources :staffs
  resources :staff, :controller => "staffs"
  resources :members, :controller => "orchestra_sections"

  resources :news, :controller => "events"

  resources :auditions


  root to: 'pages#index'
  resources :events

end