defmodule Benchmarker.PageController do
  use Phoenix.Controller
  import Ecto.Query
  alias Benchmarker.Repo
  alias Benchmarker.Story

  plug :action

  def index2(conn, %{"title" => title}) do
    render conn, "index.html", title: title, members: [
      %{name: "Chris McCord"},
      %{name: "Matt Sears"},
      %{name: "David Stump"},
      %{name: "Ricardo Thompson"}
    ]
  end

  def index(conn, %{"title" => title}) do
    #story = %{"id" => 1, "title" => "hahahaha"}
    #stories = [story, story, story, story, story, story, story, story, story, story, story, story, story, story, story, story, story, story, story, story]
    stories = Repo.all(Story)

    render conn, "index.json", stories: stories
  end
end
