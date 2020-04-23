class CreateDawns < ActiveRecord::Migration[6.0]
  def change
    create_table :dawns do |t|
      t.string :name
      t.string :hour

      t.timestamps
    end
  end
end
