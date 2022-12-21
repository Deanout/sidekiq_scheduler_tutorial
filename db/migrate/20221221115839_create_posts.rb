class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.boolean :schedule
      t.datetime :publish_at

      t.timestamps
    end
  end
end
