class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :registry_number
      t.references :company, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
