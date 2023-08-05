Rails.application.routes.draw do
  get 'admin_projects', to: 'admin_projects#index'
  get 'project_admins/index'
  get 'project_admins/new'
  resources :projects do
    resources :project_admins
  end
  root to: 'pages#home'
  devise_for :users
end

