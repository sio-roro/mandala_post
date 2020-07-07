class AddThemeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :theme, :string
    add_column :posts, :comment, :text
    add_column :posts, :post_id, :integer
  end
end
