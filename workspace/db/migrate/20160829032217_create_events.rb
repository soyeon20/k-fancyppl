class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :ev_num
      t.string :img_url
      t.string :bg_url
      t.string :name
      t.string :genre
      t.string :date
      t.string :place
      t.string :lineup

      t.timestamps null: false
    end
  end
end
