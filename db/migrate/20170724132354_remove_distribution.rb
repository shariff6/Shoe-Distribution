class RemoveDistribution < ActiveRecord::Migration[5.1]
  def change
    drop_table(:distribution)
    end
end
