class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content

      #time and dates - no need for a date or created at column
      t.timestamps
    end
  end
end
