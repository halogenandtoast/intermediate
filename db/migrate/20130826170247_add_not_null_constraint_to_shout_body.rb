class AddNotNullConstraintToShoutBody < ActiveRecord::Migration
  def up
    change_column :shouts, :body, :text, null: false
  end

  def down
    change_column :shouts, :body, :text, null: true
  end
end
