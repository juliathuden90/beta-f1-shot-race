class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.references :track, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
