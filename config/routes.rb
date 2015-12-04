Rails.application.routes.draw do
    devise_for :users, :controllers => { registrations: "registrations", sessions: "sessions" }

    get "messages/sent" => "messages#sent", as: :messages_sent

    resources :messages
end
