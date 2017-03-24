class CreateProbandos < ActiveRecord::Migration[5.0]
  def change
    create_table :probandos do |t|
      t.string :name
      t.integer :id

      t.timestamps
    end
  end
end
