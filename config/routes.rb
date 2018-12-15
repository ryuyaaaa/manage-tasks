Rails.application.routes.draw do
  root 'tasks#index'
  devise_for :user
end
