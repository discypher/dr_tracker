class CreateSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :systems do |t|
      t.references :priority, foreign_key: true
      t.text :description
      t.string :doc_link
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
