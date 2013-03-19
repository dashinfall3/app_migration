SweetArticlesMasterRails::Application.routes.draw do
  resources :categories do
    resources :articles
  end

  root :to => 'categories#index'

  get '/articles/:month/:day/:year/:id', :to => 'articles#show'

  get '/tags/:name/articles', :to => 'tags#show', :as => 'tag'
  get '/tags', :to => 'tags#index'
end
