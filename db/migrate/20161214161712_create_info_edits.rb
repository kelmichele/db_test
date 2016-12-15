class CreateInfoEdits < ActiveRecord::Migration[5.0]
    
    def up
	    create_table :info_edits do |t|
	      t.integer "admin_user_id"
	      t.integer "info_id"
	      t.string "summary"
	      t.timestamps
	    end
	    add_index("info_edits", ['admin_user_id', 'info_id'])
	end

  	def down
    	drop_table :info_edits
  	end

end