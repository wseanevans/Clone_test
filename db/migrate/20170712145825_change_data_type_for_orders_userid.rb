class ChangeDataTypeForOrdersUserid < ActiveRecord::Migration[5.1]
  def change
  	change_column :orders, :user_id, :integer
  end
end
