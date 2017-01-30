defmodule ShemereyPosts.Router do
  use ShemereyPosts.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ShemereyPosts do
    pipe_through :browser # Use the default browser stack

    get "/index", PageController, :index
    get "/about", PageController, :about
    get "/contact", PageController, :contact

    get "/posts/:post", PageController, :show, as: :special_page
  end

  # Other scopes may use custom stacks.
  scope "/api", ShemereyPosts do
    pipe_through :api
    post "/send", PageController, :send
  end
end
