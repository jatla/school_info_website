class CreateAdminsPages < ActiveRecord::Migration
  def change
    create_table :admins_pages do |t|

      t.timestamps
    end
  end
end
