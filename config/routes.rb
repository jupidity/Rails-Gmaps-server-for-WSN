Rails.application.routes.draw do
  root 'reports#test'

  get 'reports/create'

  get 'reports/test'

  get 'reports/update'

  get 'reports/destroy'
end
