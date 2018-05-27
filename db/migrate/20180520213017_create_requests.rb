class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :priority
      t.date :deadline
      t.integer :project_phase
      t.string :title
      t.text :content
      t.integer :discipline_id, foreign_key: true
      t.integer :requester_id, foreign_key: true
      t.integer :requested_id, foreign_key: true

      t.timestamps
    end
  end
end
