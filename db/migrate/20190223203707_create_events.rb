class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
