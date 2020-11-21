Rails.application.routes.draw do
  get 'login' => 'login#login'
  get 'register' => 'login#register'
  get 'auth/:provider/callback' => 'login#twitter'

  root 'togetther#index'
  get 'create' => 'togetther#create'
  get 'tweets/:id' => 'togetther#show'
  get ':id' => 'user#show'
end
