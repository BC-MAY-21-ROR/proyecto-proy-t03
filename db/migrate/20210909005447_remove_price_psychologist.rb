class RemovePricePsychologist < ActiveRecord::Migration[6.1]
  def change
    remove_column :psychologists, :price
  end
end
