class CreateProspectos < ActiveRecord::Migration
  def change
    create_table :prospectos do |t|
      t.string :nombre
      t.string :email
      t.string :edad

      t.timestamps
    end
  end
end
