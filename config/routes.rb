SignInWithTwitter::Application.routes.draw do
  root :to => 'welcome#index'
  get '/auth/twitter/callback', :to => 'sessions#create', :as => :callback
end
