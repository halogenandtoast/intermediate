class MakeShoutsPolymorphic < ActiveRecord::Migration
  def up
    delete 'DELETE FROM shouts'
    change_table :shouts do |t|
      t.remove :body
      t.belongs_to :content, polymorphic: true, index: true
    end
  end

  def down
    change_table :shouts do |t|
      t.text :body, null: false, default: "Hello world"
      t.remove :content_type
      t.remove :content_id
    end
  end
end
