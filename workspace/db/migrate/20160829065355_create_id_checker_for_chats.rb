class CreateIdCheckerForChats < ActiveRecord::Migration
  def change
    create_table :id_checker_for_chats do |t|
      t.string :name
      t.string :ip
      t.string :key
      t.timestamps null: false
    end
  end
end
