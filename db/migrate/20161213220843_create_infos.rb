class CreateInfos < ActiveRecord::Migration[5.0]
  	def up
    	create_table :infos do |t|
			t.integer "lawyer_id"
			t.string "name"
			t.integer "position"
			t.boolean "visible", :default => false
			t.string "content_type"
			t.text "content"

	      	t.timestamps
    	end
	    add_index("infos", "lawyer_id")
  	end

  	def down
  		drop_table :infos
  	end
end
