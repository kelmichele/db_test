class CreateDirectories < ActiveRecord::Migration[5.0]
  	def up
    	create_table :directories do |t|
    		t.column "name", :string, :limit => 25
		    t.integer "position"
		    t.boolean "visible", :default => false

	      	t.timestamps
	    end
	end

	def down
		drop_table :directories
	end
end