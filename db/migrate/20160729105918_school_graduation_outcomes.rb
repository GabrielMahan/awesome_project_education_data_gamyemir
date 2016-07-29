class SchoolGraduationOutcomes < ActiveRecord::Migration
  def change
    create_table :school_graduation_outcomes do |t|
    t.integer :advanced_regents_n
    t.string  :cohort
    t.string  :dbn
    t.string  :demographic
    t.integer :dropped_out_n
    t.integer :local_n
    t.decimal :regents_w_o_advanced_n
    t.string  :school_name
    t.integer :still_enrolled_n
    t.integer :total_cohort
    t.integer :total_grads_n
    t.integer :total_regents_n
    t.decimal :advanced_regents_of_cohort
    t.decimal :advanced_regents_of_grads
    t.string  :borough
    t.decimal :dropped_out_of_cohort
    t.decimal :total_grads_of_cohort
    t.decimal :still_enrolled_of_cohort
    t.decimal :regents_w_o_advanced_of_cohort
    t.decimal :local_of_cohort
    t.decimal :local_of_grads
    t.decimal :regents_w_o_advanced_of_grads
    t.decimal :total_regents_of_cohort
    t.decimal :total_regents_of_grads

    t.timestamps
    end
  end
end
