defmodule MyApp.Scripts.FoodTruckCLI do

    def get_data() do
        show_the_list()
        input = IO.gets("\n")
        length = String.length(input)
        
        check_the_command_input(input |> String.trim_trailing("\n"), length)
    end

    defp show_the_list() do
        IO.puts "The list of commands\n"
        IO.puts "food_item_name"
    end

    defp check_the_command_input(input, length) when length > 0 do
        check_the_command_based_on_input(input)
    end

    defp check_the_command_input(input, length) do
        input = IO.gets("\n")|> String.trim_trailing("\n")

         check_the_command_input(input, String.length(input))
    end

    defp check_the_command_based_on_input(input) do
        case input |> String.trim_trailing("\n")do
            "food_item_name" -> search_food_truck_data()
            _ -> IO.puts "Invalid Command"
        end
        input = IO.gets("\n")|> String.trim_trailing("\n")
        check_the_command_input(input, String.length(input))
    end

    defp search_food_truck_data() do
        name = IO.gets("Enter the Food Item Name\n")

        params  = %{"food_items" => name|> String.trim_trailing("\n")|> String.trim}

        data = MyApp.FoodTruckQuery.fetch_all(params)

        if data do
            IO.write("The Food Truck Data is\n")
            Enum.map(data, fn item -> 
            %{applicant: item.applicant, food_items: item.food_items, location_details: item.location_details}
            end)
        else
            IO.write("Please enter the proper details \n")
        end
        input = IO.gets("\n")|> String.trim_trailing("\n")
        check_the_command_input(input, String.length(input))
    end
end
MyApp.Scripts.FoodTruckCLI.get_data()