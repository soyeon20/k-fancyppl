class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :intro
      t.string :category
      t.string :place
      t.string :date
      t.string :people_num
      t.string :etc
      t.string :img_url

      t.timestamps null: false
    end
  end
end
