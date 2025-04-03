defmodule PppWeb.ErrorJSONTest do
  use PppWeb.ConnCase, async: true

  test "renders 404" do
    assert PppWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert PppWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
