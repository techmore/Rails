class CreateOutreaches < ActiveRecord::Migration[5.2]
  def change
    create_table :outreaches do |t|
      t.timestamp :date
      t.string :person_served
      t.string :location
      t.string :job_coach
      t.string :hour
      t.text :goal
      t.text :data
      t.text :assessment
      t.text :progress

      t.timestamps
    end
  end
end
