class CreatePriorities < ActiveRecord::Migration[5.1]
  def change
    create_table :priorities do |t|
      t.integer :level

      t.timestamps
    end
  end
end
