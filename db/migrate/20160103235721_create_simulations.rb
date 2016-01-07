class CreateSimulations < ActiveRecord::Migration
  def change
    create_table(:simulations) do |t|
      t.references :user, null: false
      t.string :name, limit: 64, null: false, default: ""
      t.text :state, null: false
    end
  end
end
