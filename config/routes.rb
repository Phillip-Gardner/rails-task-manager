Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # homepage - list all tasks
  get '/tasks', to: 'tasks#index'
  # create task using a get and post
  get '/tasks/new', to: 'tasks#new', as: 'new-task'
  post '/tasks', to: 'tasks#create'
  # show individual tasks using index
  get '/tasks/:id', to: 'tasks#show', as: 'task'
end
