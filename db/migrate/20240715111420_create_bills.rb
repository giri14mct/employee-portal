class CreateBills < ActiveRecord::Migration[7.1]
  def change
    create_table :bills, id: :uuid do |t|
      t.integer :amount
      t.integer :bill_type
      t.references :employee, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
