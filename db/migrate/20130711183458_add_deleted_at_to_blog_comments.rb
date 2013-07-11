class AddDeletedAtToBlogComments < ActiveRecord::Migration
  def change
    add_column :blog_comments, :deleted_at, :datetime, default:false
  end
end
