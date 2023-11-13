class AddAchievementsToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :achievements, :text
  end
end
