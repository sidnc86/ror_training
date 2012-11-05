class AddAge < ActiveRecord::Migration
  def up
    add_column :posts, :age, :integer
  end

  def down
  end
end
