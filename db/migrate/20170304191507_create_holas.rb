class CreateHolas < ActiveRecord::Migration[5.0]
  def change
    create_table :holas do |t|
      t.text :nombre

      t.timestamps
    end
  end
end
