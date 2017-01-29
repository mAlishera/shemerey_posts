defmodule ShemereyPosts.PageView do
  use ShemereyPosts.Web, :view

  def render "sent.json", %{result: result} do
    %{status: "ok", result: result}
  end

  def render "error.json", %{reason: reason, errors: errors} do
    %{status: "error", reason: reason, errors: errors}
  end
end
