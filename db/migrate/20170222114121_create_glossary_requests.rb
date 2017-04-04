class CreateGlossaryRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :glossary_requests do |t|
      t.belongs_to :glossary, index: true
      t.text :request_reason
      t.string :requester
      t.text :decision_reason

      t.string :name
      t.boolean :external_use
      t.string  :english_name
      t.text    :description
      t.string  :development_name
      t.boolean :status

      t.timestamps
    end
  end
end
