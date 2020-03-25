defmodule Database.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :enabled, :boolean, default: false, null: false

      timestamps()
    end
  end
end
