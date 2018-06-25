defmodule SaxophoneInfochartBackWeb.StructureController do
  use SaxophoneInfochartBackWeb, :controller

  def reed(conn, _params) do
    data = "Responsible for generating sound when the " <>
           "player puts in his mouth and vibrates it."
    conn |> put_req_header("accept", "application/json") |> send_resp(200, data)
  end

  def mouthpiece(conn, _params) do
    data = "When you blow into the mouthpiece, the reed " <>
           "vibrates. It is connected to the neck."
    conn |> put_req_header("accept", "application/json") |> send_resp(200, data)
  end

  def neck(conn, _params) do
    data = "It's the joint between the mouthpiece and the body. The sound generated " <>
           "by the vibrating reed enters the body through the neck."
    conn |> put_req_header("accept", "application/json") |> send_resp(200, data)
  end

  def body(conn, _params) do
    data = "The sound vibrates within the body and is amplified. By holding down the keys, " <>
           "which are located on the body, you change the length of the air column to create " <>
           "a different pitch or note. The longer the air column, the lower the corresponding " <>
           "note; the shorter the column, the higher the note."
    conn |> put_req_header("accept", "application/json") |> send_resp(200, data)
  end

  def octave_pin(conn, _params) do
    data = "It's a special key found on the neck of the saxophone that pivots on the " <>
           "octave pin. This key helps the player achieve different registers on the saxophone."
    conn |> put_req_header("accept", "application/json") |> send_resp(200, data)
  end

  def neck_strap(conn, _params) do
    data = "It's a strap worn around the player’s neck. Its lets the player carry the " <>
           "saxophone and supports the instrument so the fingers can move freely over the keys."
    conn |> put_req_header("accept", "application/json") |> send_resp(200, data)
  end
end
