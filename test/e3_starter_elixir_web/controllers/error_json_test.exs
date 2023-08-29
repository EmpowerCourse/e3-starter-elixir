defmodule E3StarterElixirWeb.ErrorJSONTest do
  use E3StarterElixirWeb.ConnCase, async: true

  test "renders 404" do
    assert E3StarterElixirWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert E3StarterElixirWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
