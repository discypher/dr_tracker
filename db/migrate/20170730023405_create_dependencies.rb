class CreateDependencies < ActiveRecord::Migration[5.1]
  def change
    create_table :dependencies do |t|
      t.references :system, foreign_key: true
      t.integer :required_system_id

      t.timestamps
    end
  end
end
