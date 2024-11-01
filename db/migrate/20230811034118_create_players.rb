class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.text :name
      t.text :genre
      t.text :twitter
      t.text :youtube
      t.text :twich
      t.text :image

      t.timestamps
    end
  end
end
