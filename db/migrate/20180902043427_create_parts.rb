class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :color
      t.string :description
      t.string :manufacturer

      t.timestamps
    end
  end
end
