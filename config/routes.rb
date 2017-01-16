Rails.application.routes.draw do
  resources :countries
  resources :details
  resources :watanprograms
  resources :members
  resources :slides
  resources :institutes
  resources :pages
  resources :projects
  resources :site_images
  resources :site_documents
  resources :post_documents
  devise_for :users
  resources :posts
  resources :comments, :path_prefix => '/:commentable_type/:commentable_id'
  root 'visitors#index'

  resources :users
  get 'visit_institutes', to: 'visitors#institutes', as: 'visit_institutes'
  get 'visit_projects', to: 'visitors#projects', as: 'visit_projects'
  get 'visit_about', to: 'visitors#about', as: 'visit_about'
  get 'oneslide', to: 'visitors#oneslide', as: 'oneslide'
  get 'membership', to: 'visitors#membership', as: 'membership'
  get 'donate', to: 'visitors#donate', as: 'donate'

  get 'mission', to: 'visitors#mission', as: 'mission'
  get 'wherewework', to: 'visitors#wherewework', as: 'wherewework'
  get 'partners', to: 'visitors#partners', as: 'partners'



  get 'allprojects', to: 'details#showprojects', as: 'allprojects'
  get 'allposts', to: 'details#showposts', as: 'allposts'

  get 'aboutwatan', to: 'visitors#about', as: 'aboutwatan'
  get 'watannews', to: 'visitors#news', as: 'watannews'
  get 'program', to: 'visitors#program', as: 'program'


  get 'khayr', to: 'khayr#index', as: 'khayr'
  get 'horiat', to: 'horiat#index', as: 'horiat'
  get 'generationfreedom', to: 'generationfreedom#index', as: 'generationfreedom'
  get 'sbc', to: 'sbc#index', as: 'sbc'
  get 'sada', to: 'sada#index', as: 'sada'
  get 'syan', to: 'syan#index', as: 'syan'
  get 'dirisat', to: 'dirisat#index', as: 'dirisat'


end
