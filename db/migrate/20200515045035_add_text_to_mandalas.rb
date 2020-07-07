class AddTextToMandalas < ActiveRecord::Migration[6.0]
  def change
    add_column :mandalas, :one, :string
    add_column :mandalas, :two, :string
    add_column :mandalas, :three, :string
    add_column :mandalas, :four, :string
    add_column :mandalas, :five, :string
    add_column :mandalas, :six, :string
    add_column :mandalas, :seven, :string
    add_column :mandalas, :eight, :string
  end
end
