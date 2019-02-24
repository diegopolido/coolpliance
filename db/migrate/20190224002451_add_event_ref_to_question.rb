class AddEventRefToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :event, foreign_key: true
  end
end
