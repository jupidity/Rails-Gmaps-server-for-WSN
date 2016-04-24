Rails.application.routes.draw do
  root 'reports#test'

  post 'reports/create'

  get 'reports/test'

  get 'reports/update'

  get 'reports/destroy'
end
