class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image
      t.integer :wins, :default => 0

      t.timestamps
    end
  end
end
