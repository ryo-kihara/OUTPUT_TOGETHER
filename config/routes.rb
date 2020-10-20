Rails.application.routes.draw do
  get 'login' => 'login#login'
  get 'register' => 'login#register'
end
