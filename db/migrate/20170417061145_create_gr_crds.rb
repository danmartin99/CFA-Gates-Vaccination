class CreateGrCrds < ActiveRecord::Migration[5.0]
  def change
    create_table :gr_crds do |t|
      t.string :g_nam1
      t.string :g_name2
      t.integer :g_idnum
      t.json :g_photo
      t.string :g_title
      t.string :g_email

      t.timestamps
    end
  end
end
