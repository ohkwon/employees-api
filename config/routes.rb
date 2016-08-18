Rails.application.routes.draw do
  get '/employees', to: 'employees#index'
  get '/employees/:id', to: 'employees#show'
  post '/employees', to: 'employees#create'
end
