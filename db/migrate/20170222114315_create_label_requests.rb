class CreateLabelRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :label_requests do |t|

      t.timestamps
    end
  end
end
