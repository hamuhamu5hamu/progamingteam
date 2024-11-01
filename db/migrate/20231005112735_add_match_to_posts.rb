class AddMatchToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :match, :text
  end
end
