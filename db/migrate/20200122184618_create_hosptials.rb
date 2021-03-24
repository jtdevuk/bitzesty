class CreateHosptials < ActiveRecord::Migration[6.0]
  def change
    create_table :hosptials do |t|
      t.text :name
      t.string :tel
      t.string :address
      t.string :website

      t.timestamps
    end
  end
end
