defmodule ShemereyPosts.PageController do
  use ShemereyPosts.Web, :controller
  alias ShemereyPosts.{Repo, Post}

  def index(conn, %{"tag" => "all"} = params) do
    posts = Repo.all(Post)
    render conn, "index.html", posts: posts
  end
  def index(conn, %{"tag" => tag} = params) do
    query = from p in Post, where: ^tag in p.tags

    posts = Repo.all(query)
    render conn, "index.html", posts: posts
  end

  def show(conn,  _params) do
    render conn, "show.html"
  end

  def about(conn, _params) do
    render conn, "about.html"
  end

  def contact(conn, _params) do
    render conn, "contact.html"
  end

  def send(conn, %{"email" => email, "message" => message, "name" => name, "phone" => phone} = params) do
    case send_email(email, phone, name, message) do
      :ok -> render(conn, "sent.json", result: true)
      _ ->
        conn
        |> put_status(500)
        |> render("error.json", reason: "send email error", errors: [])
    end
  end

  defp send_email(email, phone, name, message) do
    22
  end
end
