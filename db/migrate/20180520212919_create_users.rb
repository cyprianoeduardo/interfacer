class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      #excluded because of Devise
      #t.string :email
      #t.string :password
      t.integer :kind
      t.integer :status
      t.integer :company_id, foreign_key: true

      t.timestamps
    end
  end
end
