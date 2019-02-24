class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.date :available_in
      t.string :image
      t.string :title
      t.text :description
      t.text :reason

      t.timestamps
    end
  end
end
