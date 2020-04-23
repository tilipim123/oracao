class CreateMornings < ActiveRecord::Migration[6.0]
  def change
    create_table :mornings do |t|
      t.string :name
      t.string :hour

      t.timestamps
    end
  end
end
