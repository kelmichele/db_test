class CreateAdminUsersLawyersJoin < ActiveRecord::Migration[5.0]

  def up
    create_table :admin_users_lawyers, :id => false do |t|
      t.integer "admin_user_id"
      t.integer "lawyer_id"
    end
    add_index("admin_users_lawyers", ["admin_user_id", "lawyer_id"])
  end

  def down
    drop_table :admin_users_lawyers
  end

end
