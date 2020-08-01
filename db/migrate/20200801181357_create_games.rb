class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :game_client
      t.text :tags
      t.text :genres
      t.text :description

      t.timestamps
    end
  end
end
