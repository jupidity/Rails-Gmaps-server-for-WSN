Rails.application.routes.draw do
  root 'reports#maps'

  get '/reports/', to: "reports#index", as: "reports"
  get 'reports/create'
  get 'reports/test'
  get 'reports/update'
  get 'reports/destroy'
end
