Rails.application.routes.draw do
  root 'togetther#index'
  get 'create' => 'togetther#create'
  get 'tweets/:id' => 'togetther#show'
  get 'login' => 'login#login'
  get 'register' => 'login#register'
end
