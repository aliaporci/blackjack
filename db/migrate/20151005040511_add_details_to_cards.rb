class AddDetailsToCards < ActiveRecord::Migration
  def change
    add_column :cards, :name, :string
    add_column :cards, :suit, :string
    add_column :cards, :value, :integer
    add_column :cards, :code, :string
    add_column :cards, :image, :string
    add_column :cards, :hand_id, :integer
    add_column :cards, :game_id, :integer
  end
end
