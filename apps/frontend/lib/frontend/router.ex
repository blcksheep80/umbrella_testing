defmodule Frontend.Router do
  use Frontend, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Frontend do
    pipe_through :api

    resources "/items", ItemController, except: [:new, :edit]
  end
end
