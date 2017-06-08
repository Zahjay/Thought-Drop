Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :thoughts

  root 'welcome#index'
end
