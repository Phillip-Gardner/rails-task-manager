Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # homepage - list all tasks
  get '/tasks', to: 'tasks#index', as: 'index'
  # create task using a get and post
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'
  # show individual tasks using index
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # update the tasks using get and post
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'
  # delete the task
  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy'
end
