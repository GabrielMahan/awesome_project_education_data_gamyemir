class SchoolDemographics < ActiveRecord::Migration
  def change
    create_table :school_demographics do |t|
      t.string :dbn
      t.string :name
      t.string :schoolyear
      t.decimal :fl_percent
      t.decimal :frl_percent
      t.integer :total_enrollment
      t.integer :prek
      t.integer :k
      t.integer :grade1
      t.integer :grade2
      t.integer :grade3
      t.integer :grade4
      t.integer :grade5
      t.integer :grade6
      t.integer :grade7
      t.integer :grade8
      t.integer :grade9
      t.integer :grade10
      t.integer :grade11
      t.integer :grade12
      t.integer :ell_num
      t.decimal :ell_percent
      t.integer :sped_num
      t.decimal :sped_percent
      t.integer :ctt_num
      t.decimal :selfcontained_num
      t.integer :asian_num
      t.decimal :asian_per
      t.integer :black_num
      t.decimal :black_per
      t.integer :hispanic_num
      t.decimal :hispanic_per
      t.integer :white_num
      t.decimal :white_per
      t.integer :male_num
      t.decimal :male_per
      t.integer :female_num
      t.decimal :female_per

      t.timestamps, {null: false}

    end
  end
end
