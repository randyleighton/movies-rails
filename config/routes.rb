Rails.application.routes.draw do
match('/',              {via: :get, to: 'movies#index'})
match('movies',         {via: :get, to: 'movies#index'})
match('movies',         {via: :post, to: 'movies#create'})
match('movies/:id',     {via: :get, to: 'movies#show'})
match('movies/:id/edit',{via: :get, to: 'movies#edit'})
match('movies/:id',     {via: [:patch, :put], to: 'movies#update'})
match('movies/:id',     {via: :delete, to: 'movies#delete'})

match('categories',         {via: :get, to: 'categories#index'})
match('categories',         {via: :post, to: 'categories#create'})
match('categories/:id',     {via: :get, to: 'categories#show'})
match('categories/:id/edit',{via: :get, to: 'categories#edit'})
match('categories/:id',     {via: [:patch, :put], to: 'categories#update'})
match('categories/:id',     {via: :delete, to: 'categories#delete'})


end
