Rails.application.routes.draw do
  post 'reports/create'

  get 'reports/test'

  get 'reports/update'

  get 'reports/destroy'
end
