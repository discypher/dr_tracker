class AddDrTestToSystemUnderTest < ActiveRecord::Migration[5.1]
  def change
    change_table :system_under_tests do |t|
      t.references :dr_test, foreign_key: true
    end
  end
end
