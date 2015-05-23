class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title
      t.string  :author_name
      t.text    :content

      t.timestamps
    end
  end
end
