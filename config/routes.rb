Rails.application.routes.draw do

  devise_for :users
  # devise_for :users,
  # controller: {registrations: 'registrations'}
  # root 'pages#home'
  # get '/users/:id', to: 'users#show', as:'user'


  get '/posts/new', to: 'posts#new'
  post '/posts', to: 'posts#create'
  post '/posts/:post_id/photos', to: 'photos#create', as: 'post_photos'

end
