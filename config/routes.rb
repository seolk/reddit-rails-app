Rails.application.routes.draw do
  # root route subs is the controller and index is the method name
  # controller#method name
  root 'subs#index'

  # get 'subs/new'
  # get '/turkey', to: 'subs#new'

  # post '/subs', to: 'subs#create'
  # # :id is a placeholder for the id number
  # put '/subs/:id', to: 'subs#update'
  # #:id is used the same way for delete
  # delete '/subs/:id', to 'subs#delete'
  # in rails resouces :controller name will take care of the above "get, post, put, delete"
  
  # embedded routes or nested routes where topics is relying on the subs
  resources :subs do
    resources :topics
  end
# if you want to see on local host 
# bundle exec rails s
# on web browser "localhost:3000/rails/info/routes"
end
