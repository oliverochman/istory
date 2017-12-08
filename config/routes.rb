Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, controllers: { omniauth_callbacks: :omniauth_callbacks }

  root controller: :welcome, action: :index

  resources :stories do
    resources :chapters
  end
end
