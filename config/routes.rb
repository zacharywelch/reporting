Rails.application.routes.draw do
  root to: 'users#index'
  resources :users

  concern :downloadable do
    resources :downloads, only: [:show]
  end

  concern :processable do
    resources :tasks, only: [:index, :create, :show]
  end

  namespace :reports do
    resource :ranking, only: [:show], concerns: [:processable, :downloadable]
  end

  # resources :agencies, only: [:show], path: 'a' do
  #   namespace :reports do
  #     resource :usage_by_number, only: [:show], concerns: [:processable, :downloadable]
  #   end
  # end

  # GET  /reports/ranking?top=5
  # GET  /reports/ranking?months_ago=2
  # POST /reports/ranking/tasks
  # GET  /reports/ranking/tasks/1
  # GET  /reports/ranking/1/download

  # POST /reports/tasks
  # GET  /reports/tasks/1
  # GET  /reports/1/download

  # GET  /reports/usage_by_number?device=mobile
  # POST /reports/usage_by_number/tasks => 202 Accepted
  # GET  /reports/usage_by_number/tasks/1 => 303 See Other, Location: download
  # GET  /reports/usage_by_number/1/download
end
