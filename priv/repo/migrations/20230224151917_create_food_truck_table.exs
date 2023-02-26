defmodule MyApp.Repo.Migrations.CreateFoodTruckTable do
  use Ecto.Migration

  def change do
    create table(:food_trucks) do
      add :location_id, :bigint
      add :applicant, :string
      add :facility_type, :string
      add :cnn, :bigint
      add :location_description, :string
      add :address, :string
      add :block_lot, :bigint
      add :block, :bigint
      add :lot, :bigint
      add :permit, :string
      add :status, :string
      add :food_items, :string
      add :lat, :bigint
      add :lng, :bigint
      add :schedule, :string
      add :days_hours, :string
     
      timestamps()
    end
  end
end
