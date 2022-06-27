class CreateJoinTableImageTag < ActiveRecord::Migration[7.0]
  def change
    create_join_table(:images, :tags)
  end
end
