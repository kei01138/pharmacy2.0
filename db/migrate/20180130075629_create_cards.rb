class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, foreign_key: true
      t.string :images

      t.timestamps
    end
  end
end
