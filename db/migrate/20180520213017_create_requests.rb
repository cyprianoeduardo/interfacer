class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :priority
      t.date :deadline
      t.integer :project_phase
      t.string :title
      t.text :content
      t.references :discipline, foreign_key: true
      t.references :requester, foreign_key: true
      t.references :requested, foreign_key: true

      t.timestamps
    end
  end
end
