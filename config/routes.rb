Rails.application.routes.draw do
    scope :api do
        resources :articles
        resources :authors
    end
end