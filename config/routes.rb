Rails.application.routes.draw do
  devise_for :users
  resources :destinations

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'destinations' => 'destinations#index'

  root 'welcome#index'
end
