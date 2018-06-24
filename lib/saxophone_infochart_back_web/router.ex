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
    get "/bell",        StructureController, :bell
    get "/octave_pin",  StructureController, :octave_pin
    get "/neck_rap",    StructureController, :neck_rap
  end
end
