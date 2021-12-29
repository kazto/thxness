Rails.application.routes.draw do
  devise_for :admin_apps
  devise_for :admin_workspaces
  devise_for :users
  get 'user/index'
  get 'user/login'
  get 'admin_workspace/index'
  get 'admin_workspace/login'
  get 'admin_workspace/create_user'
  get 'admin_app/index'
  get 'admin_app/login'
  get 'admin_app/create_workspace'
  get 'admin_app/create_user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "user#login"
end
