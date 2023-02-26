defmodule MyApp.FoodTruckQuery do
    import Ecto.Query
    alias MyApp.Repo
    alias MyApp.FoodTruck
  
    def fetch_all(params) do
      Repo.all from ft in FoodTruck,
        where: ^filter(params)
    end

    defp filter(params) do
        true
        |> filter_by_query(params)
    end
  
    defp filter_by_query(dynamic, %{"query" => ""}), do: dynamic
    defp filter_by_query(dynamic, %{"query" => query}) do
        parsed_query = "%#{String.replace(query, " ", "%")}%"
        dynamic([ft], ^dynamic and (ilike(ft.food_items, ^parsed_query)))
    end
    defp filter_by_query(dynamic, _), do: dynamic
  end
  