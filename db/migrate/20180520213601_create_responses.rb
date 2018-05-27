class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.text :content
      t.integer :request_id, foreign_key: true
      t.integer :company_id, foreign_key: true

      t.timestamps
    end
  end
end
