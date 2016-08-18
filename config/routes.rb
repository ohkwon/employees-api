Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/employees', to: 'employees#index'
      get '/employees/:id', to: 'employees#show'
      post '/employees', to: 'employees#create'
      patch '/employees/:id', to: 'employees#update'
      delete 'employees/:id', to: 'employees#destroy'
    end
  end
end
