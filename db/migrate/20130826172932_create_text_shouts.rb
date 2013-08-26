class CreateTextShouts < ActiveRecord::Migration
  def change
    create_table :text_shouts do |t|
      t.text :body, null: false

      t.timestamps
    end
  end
end
