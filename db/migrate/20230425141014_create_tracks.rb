class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.date :ThisYearsDate

      t.timestamps
    end
  end
end
