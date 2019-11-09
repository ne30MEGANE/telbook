class CreateTelephones < ActiveRecord::Migration[5.2]
  def change
    create_table :telephones do |t|
      t.string :number
			t.boolean :cellphone
      t.timestamps
    end
  end
end
