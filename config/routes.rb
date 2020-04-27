Rails.application.routes.draw do
  get 'morning', to: 'morning#new'
  get 'list', to: 'list#'
  get 'afternoon', to: 'afternoon#new'
  get 'night', to: 'night#new'
  get 'dawn', to: 'dawn#new'
  get 'evening', to: 'evening#new'

  	post 'morning', to: 'morning#create'
  	post 'afternoon', to: 'afternoon#create'
  	post 'night', to: 'night#create'
  	post 'dawn', to: 'dawn#create'
    post 'evening', to: 'evening#create'


  root 'welcome#index'
end