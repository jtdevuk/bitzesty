class CorrectSpellingHospitals < ActiveRecord::Migration[6.0]
  def change
    rename_table :hosptials, :hospitals
  end
end
