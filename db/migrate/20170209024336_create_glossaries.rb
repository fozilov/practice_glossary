class CreateGlossaries < ActiveRecord::Migration[5.0]
  def change
    create_table :glossaries do |t|
      t.string :name
      t.boolean :external_use
      t.string :english_name
      t.text :description
      t.string :development_name
      t.boolean :status

      t.timestamps
    end
  end
end
