class CreateBoks < ActiveRecord::Migration[5.2]
  def change
    create_table :boks do |t|

      t.string :title
      t.text :description
      t.string :author

      t.timestamps
    end
  end
end
