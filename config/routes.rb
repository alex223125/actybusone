require'sidekiq/web'
Rails.application.routes.draw do

  mount Sidekiq::Web => '/sidekiq'


  namespace :quest_implementator do
    resources :implementators
  end

  namespace :quest_planner do
    resources :planners
    resources :member_positions
    resources :tool_positions
    resources :member_invites
  end

  namespace :quest do
    resources :regularities
    resources :difficulties
    resources :quests
    resources :steps
    resources :algorithms
    get 'quest', :to => 'quest#index_two'
    end

  resources :pin_content_categories
  resources :landing_pages

  resources :organisations
  resources :activities
  # devise_for :user_administration
  resources :articles


  namespace :direction do
    resources :direction_categories
    resources :directions
  end



  resources :pins do
    member do
      put "like", to: "pins#upvote"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#home"

  get 'main_page', :to => "static_pages#main_page"


  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }


  ## user internal page
  namespace :user_administration do
    resources :planners
  end

  get 'user_main_page', :to => "user_administration/pages#main_page"


end
