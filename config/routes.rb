Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/jobs', to: 'jobs#create'
  get '/jobs/:id', to: 'jobs#show'
  get '/jobs', to: 'jobs#index'
end
