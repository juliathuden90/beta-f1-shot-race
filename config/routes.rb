Rails.application.routes.draw do
  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  get "rules", to: "pages#rules"
  get "print", to: "pages#print"
  get "raceinfo", to: "pages#raceinfo"
  get "founders", to: "pages#founders"
  get "shots", to: "pages#shots"
end
