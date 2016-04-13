class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :spouse
      t.integer :drawing_id

      t.timestamps null: false
    end
  end
end
