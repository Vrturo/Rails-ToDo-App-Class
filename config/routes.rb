Rails.application.routes.draw do

# GET    /  # show the todo list
# POST   /tasks/:id/complete
# POST   /tasks/:id/uncomplete
# DELETE /tasks/:id

  resources :tasks, only: [:create, :destroy, :update]
  post '/tasks/:id/complete', to: 'tasks#complete'
  post '/tasks/:id/uncomplete', to: 'tasks#uncomplete'
  root to: 'tasks#index'

end
