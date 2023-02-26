defmodule MyAppWeb.FoodTruckController do
    use MyAppWeb, :controller
    
    def index(conn, params) do
        with \
          food_truck <- MyApp.FoodTruckQuery.fetch_all(params)
        do
            json(conn, %{data: Enum.map(food_truck, fn data -> %{applicant: data.applicant, food_items: data.food_items, location_details: data.location_details, status: data.status, days_hours: data.days_hours} end)})
        end
    end
  end
  