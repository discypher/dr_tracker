class CreateSystemUnderTests < ActiveRecord::Migration[5.1]
  def change
    create_table :system_under_tests do |t|
      t.references :system, foreign_key: true
      t.datetime :completion_time
      t.text :notes

      t.timestamps
    end
  end
end
