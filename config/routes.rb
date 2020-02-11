Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # all tasks
  get "tasks", to: "tasks#index", as: :tasks

  # create a task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'

  # # delete
  delete 'tasks/:id', to: 'tasks#destroy'

end
