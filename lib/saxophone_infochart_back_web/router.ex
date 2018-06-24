defmodule SaxophoneInfochartBackWeb.Router do
  use SaxophoneInfochartBackWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SaxophoneInfochartBackWeb do
    pipe_through :api
  end
end
