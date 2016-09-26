Rails.application.routes.draw do
  resources :borrowers, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :users, only: [:index, :show]

  resources :books, except: [:new, :edit]
  # same thing ^
  # get '/books', to: 'books#index'
  # get '/books/:id', to: 'books#show'
  # post '/books', to: 'books#create'
  # patch '/books/:id', to: 'books#update'
  # delete '/books/:id', to: 'books#destroy'

  resources :authors, except: [:new, :edit]
  # resources :loans
  resources :loans, except: [:new, :edit]

end
