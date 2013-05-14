DsoWeb::Application.routes.draw do
  root to: 'pages#index'

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
end
