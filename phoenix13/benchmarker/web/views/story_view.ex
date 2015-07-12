defmodule Benchmarker.StoryView do
  use Benchmarker.Web, :view

  def render("index.json", %{stories: stories}) do
    %{data: render_many(stories, "story.json")}
  end

  def render("show.json", %{story: story}) do
    %{data: render_one(story, "story.json")}
  end

  def render("story.json", %{story: story}) do
    %{id: story.id, title: story.title}
  end
end
