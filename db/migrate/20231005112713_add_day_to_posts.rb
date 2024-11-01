class AddDayToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :day, :text
  end
end
