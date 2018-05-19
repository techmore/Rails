Rails.application.routes.draw do
  resources :ledgers
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'welcome/home', to: 'welcome#home'
  root 'welcome#home' 
  get 'about', to: 'welcome#about'

end
