class CreateDrTests < ActiveRecord::Migration[5.1]
  def change
    create_table :dr_tests do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :description
      t.text :notes

      t.timestamps
    end
  end
end
