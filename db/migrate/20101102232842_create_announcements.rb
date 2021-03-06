class CreateAnnouncements < ActiveRecord::Migration
  def self.up
    create_table :announcements do |t|
      t.string :author, :null => false
      t.string :title
      t.text :content, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :announcements
  end
end
