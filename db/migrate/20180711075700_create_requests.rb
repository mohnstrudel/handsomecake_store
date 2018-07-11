class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
