defmodule GraphqlApi.Viu.Product do
  use Ecto.Schema
  import Ecto.Changeset
  alias GraphqlApi.Viu.Product

  @primary_key {:id_product, :integer, []}
  schema "ps_product" do
    field :id_supplier, :integer
    field :id_manufacturer, :integer
    field :id_category_default, :integer
  end

  @doc false
  def changeset(%Product{} = product, attrs) do
    product
    |> cast(attrs, [:id_supplier, :id_manufacturer, :id_category_default])
    |> validate_required([:id_supplier, :id_manufacturer, :id_category_default])
  end
end
