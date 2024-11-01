class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :gamename
      t.text :score
      t.text :image

      t.timestamps
    end
  end
end
