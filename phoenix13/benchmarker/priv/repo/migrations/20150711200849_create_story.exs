defmodule Benchmarker.Repo.Migrations.CreateStory do
  use Ecto.Migration

  def change do
    create table(:stories) do
      add :title, :string
      add :body, :string

      timestamps
    end

  end
end
