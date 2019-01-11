defmodule MyGear.Controller.Hello do
  use Antikythera.Controller

  def hello(conn) do
    MyGear.Gettext.put_locale(conn.request.query_params["locale"] || "en")
    Conn.render(conn, 200, "hello", [gear_name: :my_gear])
  end
end
