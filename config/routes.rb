Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "links#new"
  resources :links, only: [:new, :create, :show, :index]
  get '/:slug', to: "redirects#create"
end
