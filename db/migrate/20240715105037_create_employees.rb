class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees, id: :uuid do |t|
      
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :designation
      t.references :department, null: false, foreign_key: true, type: :uuid
      t.timestamps
    end
  end
end
