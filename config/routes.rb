Contacts::Application.routes.draw do
  devise_for :users
  resources :contacts

  root 'welcome#index'
end
