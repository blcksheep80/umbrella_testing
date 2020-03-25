defmodule Database.Tinkering.Items.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :enabled, :boolean, default: false
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:name, :enabled])
    |> validate_required([:name, :enabled])
  end
end
