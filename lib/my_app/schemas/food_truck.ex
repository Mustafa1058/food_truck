defmodule MyApp.FoodTruck do
    use Ecto.Schema
    import Ecto.Changeset
  
    schema "food_trucks" do
      field :location_id, :integer
      field :applicant, :string
      field :facility_type, :string
      field :cnn, :integer
      field :location_description, :string
      field :address, :string
      field :block_lot, :integer
      field :block, :integer
      field :lot, :integer
      field :permit, :string
      field :status, :string
      field :food_items, :string
      field :lat, :integer
      field :lng, :integer
      field :schedule, :string
      field :days_hours, :string
    
      timestamps()
    end
  
    @fields ~w(location_id applicant facility_type cnn location_description address block_lot block lot permit status food_items lat lng schedule days_hours)a
  
    def changeset(struct, params) do
      struct
      |> cast(params, @fields)
    end
  end
