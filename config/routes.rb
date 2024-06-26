Rails.application.routes.draw do
  root 'pages#home'
  get 'apply', to: 'pages#apply'
  get 'start', to: 'pages#start'

  get 'stakeholder_updates/new', to: 'stakeholder_updates#new'

  # hey there

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'signup' }
  get 'logout', to: 'pages#logout', as: 'logout'

  resources :subscribe, only: [:index]
  resources :dashboard, only: [:index]
  resources :account, only: [:index, :update]
  resources :billing_portal, only: [:new, :create]
  resources :blog_posts, controller: :blog_posts, path: "blog", param: :slug

  resources :user_submissions, only: [:create]

  # static pages
  pages = %w[
    privacy terms
  ]

  pages.each do |page|
    get "/#{page}", to: "pages##{page}", as: page.gsub('-', '_').to_s
  end

  # admin panels
  namespace :admin do
    get '/', to: 'pages#dashboard'
    resources :user_submissions, only: [:update]
  end

end
