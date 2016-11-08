class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :link
      t.string :year

      t.timestamps
    end
  end
end
