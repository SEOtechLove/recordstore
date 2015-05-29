class CreateRecordstores < ActiveRecord::Migration
  def change
    create_table :recordstores do |t|
      t.string :name
      t.string :street
      t.integer :code
      t.string :city
      t.string :contact_name
      t.string :contact_number
      t.string :contact_email
      t.string :contact_fax
      t.string :seo_title
      t.string :seo_description
      t.string :logo_url
      t.string :content

      t.timestamps null: false
    end
  end
end
