class AddActiveTostudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active, :boolean, :default => false
    #Ex:- :default =>''
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
