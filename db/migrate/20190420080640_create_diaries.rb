class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.integer :time
      t.string :place
      t.string :someone
      t.string :action

      t.timestamps
    end
  end
end
