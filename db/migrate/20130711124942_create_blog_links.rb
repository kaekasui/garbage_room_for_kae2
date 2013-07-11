class CreateBlogLinks < ActiveRecord::Migration
  def change
    create_table :blog_links do |t|
      t.string :title
      t.string :author
      t.string :introduction
      t.string :url
      t.integer :position
      t.boolean :draft, default: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
