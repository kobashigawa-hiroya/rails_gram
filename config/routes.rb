Rails.application.routes.draw do

  devise_for :users,
  controller: {registrations: 'registrations'}
  root 'pages#home'
  get '/users/:id', to: 'users#show', as:'user'


  resource :posts, only: %i(new create index) do
    resource :photos, only: %i(create)
  end

end
