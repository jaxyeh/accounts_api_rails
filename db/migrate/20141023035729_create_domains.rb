class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.integer :account_id
      t.string :hostname
      t.string :origin_ip_address

      t.timestamps
    end
  end
end
