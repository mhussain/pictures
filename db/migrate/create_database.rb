class CreateDatabase < ActiveRecord::Migration
    def self.up
        create_table :pictures do |t|
            t.column :name, :string, :limit => 100
            t.column :tag, :string
        end
    end

    def self.down
        drop_table :pictures
    end
end
