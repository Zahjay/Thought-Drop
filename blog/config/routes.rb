Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :thoughts do
    resources :comments
  end

  root 'welcome#index'
end
