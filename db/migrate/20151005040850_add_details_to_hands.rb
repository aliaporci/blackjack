class AddDetailsToHands < ActiveRecord::Migration
  def change
    add_column :hands, :player, :boolean
    add_column :hands, :game_id, :integer
  end
end
