# MyApp

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix


Code written Steps
  1) created Migration for food_trucks
  2) written a API to return the food trucks data (Get:: http://localhost:4000/api/food_truck)
  3) Written a Script file to add the data from the given CSV file (mix run /my_app/priv/repo/scripts/add_food_truck_data.exs)
  4) Written a Script file for the Food Truck CLI (mix run /my_app/priv/repo/scripts/food_truck_cli.exs)
