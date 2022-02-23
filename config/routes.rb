Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", confirmations: "users/confirmations", omniauth: "users/omniauth", passwords: "users/passwords", registrations: "users/registrations", unlocks: "users/unlocks"}
 
  devise_for :doctors, path: 'doctors', controllers: { sessions: "doctors/sessions", confirmations: "doctors/confirmations", omniauth: "doctors/omniauth", passwords: "doctors/passwords", registrations: "doctors/registrations", unlocks: "doctors/unlocks"}

  root 'pages#home'  

end
