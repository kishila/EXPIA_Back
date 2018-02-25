Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    get '/users/show/:name', to: 'users#show'
  end

  post 'user/update'
end
