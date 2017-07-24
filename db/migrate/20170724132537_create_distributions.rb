class CreateDistributions < ActiveRecord::Migration[5.1]
  def change
    create_table(:distributions) do |x|
    x.column(:brand_id, :integer)
    x.column(:store_id, :integer)
    x.timestamps()
  end
  end
end
