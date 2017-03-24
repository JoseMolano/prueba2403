class CreateHolandas < ActiveRecord::Migration[5.0]
  def change
    create_table :holandas do |t|
      t.string :nombre
      t.integer :id
      t.Probando :references

      t.timestamps
    end
  end
end
