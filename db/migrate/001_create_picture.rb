class CreatePicture < ActiveRecord::Migration
  def self.up
    create_table :picture do |table|
        table.column :name, :string, :null => false
        table.column :tag, :string
        table.column :ext, :string, :limit => 5
    end
  end

  def self.down
    drop_table :picture
  end
end
