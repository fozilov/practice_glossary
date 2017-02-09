class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.text :request_reason
      t.string :requester
      t.text :decision_reason

      t.timestamps
    end
  end
end
