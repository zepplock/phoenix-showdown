defmodule Benchmarker.StoryController do
  use Benchmarker.Web, :controller

  alias Benchmarker.Story

  plug :scrub_params, "story" when action in [:create, :update]
  plug :action

  def index(conn, _params) do
    stories = Repo.all(Story)
    render(conn, "index.json", stories: stories)
  end

  def create(conn, %{"story" => story_params}) do
    changeset = Story.changeset(%Story{}, story_params)

    if changeset.valid? do
      story = Repo.insert(changeset)
      render(conn, "show.json", story: story)
    else
      conn
      |> put_status(:unprocessable_entity)
      |> render(Benchmarker.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    story = Repo.get(Story, id)
    render conn, "show.json", story: story
  end

  def update(conn, %{"id" => id, "story" => story_params}) do
    story = Repo.get(Story, id)
    changeset = Story.changeset(story, story_params)

    if changeset.valid? do
      story = Repo.update(changeset)
      render(conn, "show.json", story: story)
    else
      conn
      |> put_status(:unprocessable_entity)
      |> render(Benchmarker.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    story = Repo.get(Story, id)

    story = Repo.delete(story)
    render(conn, "show.json", story: story)
  end
end
