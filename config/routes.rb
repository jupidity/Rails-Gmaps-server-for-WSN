Rails.application.routes.draw do
  root 'reports#test'

  get '/reports/', to: "reports#index", as: "reports"
  get 'reports/create'
  get 'reports/test'
  get 'reports/update'
  get 'reports/destroy'
end
