Rails.application.routes.draw do
  get 'media' => 'media#new'
  post 'media' => 'media#create'
  root             'static_pages#home'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'  
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  resources :users do
    member do
      get :media_view, :following, :followers, :switch_user,:media_file_upload, :original_user, :make_admin, :message_user
    end
  end
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :edit, :create, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  resources :messages,          only: [:create, :destroy]
  resources :tests
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
