Rails.application.routes.draw do
  root 'togetther#index'
  get 'login' => 'login#login'
  get 'register' => 'login#register'
end
