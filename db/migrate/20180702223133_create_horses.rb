class CreateHorses < ActiveRecord::Migration[5.2]
  def change
    create_table :horses do |t|
      t.string :name
      t.string :breed
      t.string :color
      t.string :weight

      t.timestamps
    end
  end
end
