class CreateTherapists < ActiveRecord::Migration[6.0]
  def change
    create_table :therapists do |t|
      t.string :full_name
      t.string :personality_traits
      t.string :email, default: '', null: false
      t.integer :fee
      t.string :description
      t.string :professional_description
      t.integer :years_experience
      t.integer :therapist_age
      t.string :therapist_gender
      t.string :therapist_expertise
      t.string :therapy_description
      t.timestamps
    end
  end
end
