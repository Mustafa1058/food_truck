defmodule MyApp.Scripts.AddFoodTruckData do
    import Ecto.Query
    alias MyApp.Repo
  
    def add_food_truck_data(data) do
      data = :my_app \
      |> Application.app_dir("priv/repo/sources/#{data}") \
      |> File.stream!()
      |> CSV.decode!(separator: ?;, strip_fields: true)
  
      data = Enum.map(data, fn item ->
        %{
            location_id: locationid,
            applicant: applicant, 
            facility_type: facilityType, 
            cnn: cnn, 
            location_description: locationDescription, 
            address: address,
            block_lot: blocklot, 
            block: block,
            lot: lot,
            permit: permit,
            status: status,
            food_items: foodItems,
            lat: latitude,
            lng: longitude,
            schedule: schedule,
            days_hours: dayshours
        }
      end)
  
      Repo.insert_all(MyApp.FoodTruck, data)
    end
  end
  MyApp.Scripts.AddFoodTruckData.add_food_truck_data("Mobile_Food_Facility_Permit (1).csv")
  