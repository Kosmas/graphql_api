defmodule GraphqlApiWeb.Schema do
  use Absinthe.Schema
  alias GraphqlApi.{Viu, Repo}

  query do

    field :products, list_of(:product) do
      resolve fn _, _, _ ->
        {:ok, Repo.all(Viu.Product)}
      end
    end
  end

  object :product do
    field :id_product, :id
    field :id_supplier, :integer
    field :id_manufacturer, :integer
    field :id_category_default, :integer
  end

end
