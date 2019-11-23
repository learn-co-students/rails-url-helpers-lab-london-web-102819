Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "/students/activate", to: "students#activate"
  get "/students/:id/activate", to: "students#active", as: 'activate_student'
  resources :students, only: [:index, :show]
  
end
