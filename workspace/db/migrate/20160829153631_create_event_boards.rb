class CreateEventBoards < ActiveRecord::Migration
  def change
    create_table :event_boards do |t|
      
      t.text : title
      t.text : content
      t.text : writer
      t.integer : count

      t.timestamps null: false
    end
  end
end
