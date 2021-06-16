Rails.application.routes.draw do
  scope "/api" do
    get "/jokes", to: "jokes#index"
    post "/jokes", to: "jokes#create"
    get "/jokes/random", to: "jokes#random"
    get "/jokes/:id", to: "jokes#show"
    put "/jokes/:id", to: "jokes#update"
    delete "/jokes/:id", to: "jokes#destroy"

    scope "/auth" do
      post "/sign_up", to: "users#create"
    end
  end
end
