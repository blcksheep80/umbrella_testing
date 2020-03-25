defmodule Frontend.ItemView do
  use Frontend, :view
  alias Frontend.ItemView

  def render("index.json", %{items: items}) do
    %{data: render_many(items, ItemView, "item.json")}
  end

  def render("show.json", %{item: item}) do
    %{data: render_one(item, ItemView, "item.json")}
  end

  def render("item.json", %{item: item}) do
    %{id: item.id, name: item.name, enabled: item.enabled}
  end
end
