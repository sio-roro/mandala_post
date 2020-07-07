class AddUserIdToMandalas < ActiveRecord::Migration[6.0]
  def change
    add_column :mandalas, :user_id, :integer
  end
end
