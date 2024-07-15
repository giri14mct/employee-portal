class CreateDepartments < ActiveRecord::Migration[7.1]
  def change
    create_table :departments, id: :uuid do |t|
      
      t.string :name
      t.timestamps
    end
  end
end
