Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :grades
  namespace :grades do
    post :moodle_save
  end
end
