class AddViewCounterToImages < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :view_count, :integer
  end
end
