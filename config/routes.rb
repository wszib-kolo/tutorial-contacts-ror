Contacts::Application.routes.draw do
  resources :contacts

  root 'welcome#index'
end
