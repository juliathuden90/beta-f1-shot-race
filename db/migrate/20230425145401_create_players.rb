class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.integer :user_position
      t.integer :megadriver_position

      t.timestamps
    end
  end
end
