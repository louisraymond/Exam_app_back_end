Rails.application.routes.draw do
  resources :question_joins
  resources :tests
  resources :exam_questions
  resources :practice_questions
  get '/tests/:id/practice_questions', to: 'tests#practice_questions'
  get '/tests/:id/exam_questions', to: 'tests#exam_questions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
