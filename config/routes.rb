Vinnycalc::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
  root :to => "home#index"
end
