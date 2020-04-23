class CreateNights < ActiveRecord::Migration[6.0]
  def change
    create_table :nights do |t|
      t.string :name
      t.string :hour

      t.timestamps
    end
  end
end
