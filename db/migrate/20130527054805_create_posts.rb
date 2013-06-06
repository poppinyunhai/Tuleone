class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.integer :revert_id
      t.string :content

      t.timestamps
    end
  end
end
