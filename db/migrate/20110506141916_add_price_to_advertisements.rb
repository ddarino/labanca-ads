class AddPriceToAdvertisements < ActiveRecord::Migration
  def self.up
    add_column :advertisements, :price, :decimal
  end

  def self.down
    remove_column :advertisements, :price
  end
end
