class CreateLawyers < ActiveRecord::Migration[5.0]
  	def up
    	create_table :lawyers do |t|
    		t.integer "directory_id"
    		t.string "name"
    		t.integer "permalink"
    		t.integer "position"
		    t.boolean "visible", :default => false

      		t.timestamps
    	end
	    add_index("lawyers", "directory_id")
	    add_index("lawyers", "permalink")
    end

    def down
    	drop_table :lawyers
  	end
end
