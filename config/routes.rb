Rails.application.routes.draw do
  
  get "users/show/:id"=>"users#show",as:"users_show"
  devise_for :users, controllers: {
        sessions:      'users/sessions',
        passwords:     'users/passwords',
        registrations: 'users/registrations'
    }
  post "relationship/create/:id"=>"relationships#create",as:"create_relationship"
  delete "relationship/destroy/:id"=>"relationships#destroy",as:"destroy_relationship"
  
  
  root 'hello#top'
  resources :posts
  delete "mandala/:id"=>"mandalas#destroy",as:"mandala_destroy"
  get "mandalas/new/:id"=>"mandalas#new",as:"mandala_new"
  post "mandaras/create/:id"=>"mandalas#create",as:"mandala"
  post "mandala/:post_id/expand/:theme"=>"posts#expand",as:"mandala_expand"
  
  post "likes/:mandala_id"=>"likes#create",as:"like"
  delete "likes/:mandala_id"=>"likes#destroy",as:"like_delete"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
