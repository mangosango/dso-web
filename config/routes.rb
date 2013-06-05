DsoWeb::Application.routes.draw do
  root to: 'pages#index'
  resources :events

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
end
