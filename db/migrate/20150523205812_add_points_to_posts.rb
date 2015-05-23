class AddPointsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :point_count, :integer, default: 1
  end
end
