Rails.application.routes.draw do


scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    # rest of your routes here
    # for example:
    resources :votes
     root to: 'home#index'
  	get "/acerca-de-juan",:to => "home#juan", :as => "juan"
 
  end
end
