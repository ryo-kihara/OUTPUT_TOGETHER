Rails.application.routes.draw do
  root 'togetther#index'
  get 'create' => 'togetther#create'
  get 'login' => 'login#login'
  get 'register' => 'login#register'
end
