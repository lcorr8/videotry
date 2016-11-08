Rails.application.routes.draw do
  resources :sections
  resources :videos
  resources :users
  get '/add_all_videos', to: 'videos#add_all_videos', as: 'add_all_videos'
  get '/select_assign_sections', to: 'application#select_assign_sections', as: 'select_assign_sections'
  post '/assign_sections', to: 'application#assign_sections', as: 'assign_sections'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
