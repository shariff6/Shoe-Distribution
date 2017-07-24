class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table(:brands) do |b|
    b.column(:name, :string)

    b.timestamps()
  end
  end
end
