class CreateSimulators < ActiveRecord::Migration
  def change
    create_table(:simulators) do |t|
      t.string :name, limit: 64, null: false, default: ""
      t.text :state, null: false
    end
  end
end
