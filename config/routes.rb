Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # See all tasks
  get 'tasks', to: 'tasks#index'

  # Create a tasks
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Seed one task
  get 'task/:id', to: 'tasks#show', as: :task

  # Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'

end
