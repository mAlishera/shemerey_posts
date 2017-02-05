defmodule ShemereyPosts.CreateEmailService do
  import Bamboo.Email

  def new_email(to, from, subject, body) do
    new_email
    |> to(to)
    |> from(from)
    |> subject(subject)
    |> html_body("<strong>#{body}</strong>")
    |> text_body(body)
  end
end
