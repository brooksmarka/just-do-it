class AddPermissionsToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :permission, :boolean, default: "public"
  end
end
