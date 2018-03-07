class CreateQualifiedLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :qualified_leads do |t|
 		  t.integer :lead_id
      t.timestamps
    end
 
    create_table :leads do |t|
		  t.string :name
		  t.string :phone_number
		  t.string :postcode
		  t.integer :gender
		  t.integer :insurance_type
		  t.integer :material_choice
		  t.integer :treatment_type
		  t.integer :upper_jaw_number_of_teeth
		  t.integer :lower_jaw_number_of_teeth
		  t.text :dental_schema
		  t.datetime :created_at, null: false
		  t.datetime :updated_at, null: false

		  t.timestamps
    end
 
    add_index :qualified_leads, :lead_id
  end
end
