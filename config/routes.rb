Rails.application.routes.draw do
  get 'chapters/show'

  devise_for :users

  root controller: :welcome, action: :index

  resources :stories do
    resources :chapters
  end
end
