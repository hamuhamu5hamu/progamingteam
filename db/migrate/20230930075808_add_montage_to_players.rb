class AddMontageToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :montage, :text
  end
end
