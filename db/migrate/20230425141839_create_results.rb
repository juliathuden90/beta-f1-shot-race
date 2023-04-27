class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.references :game, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
