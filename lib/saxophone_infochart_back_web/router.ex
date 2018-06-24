defmodule SaxophoneInfochartBackWeb.Router do
  use SaxophoneInfochartBackWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SaxophoneInfochartBackWeb do
    pipe_through :api

    get "/reed",        StructureController, :reed
    get "/mouthpiece",  StructureController, :mouthpiece
    get "/neck",        StructureController, :neck
    get "/body",        StructureController, :body
    get "/octave_pin",  StructureController, :octave_pin
    get "/neck_strap",  StructureController, :neck_strap
  end
end
