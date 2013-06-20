class ChangeOverToUnder < ActiveRecord::Migration
  def up
    change_table :people do |t|
      t.rename :over_three, :under_three
    end

    # This is a change in boolean logic, so existing people need their values 
    # swapped
    people = Person.find(:all)
    people.each do |p|
       p.under_three = p.under_three ? false : true
       p.save
    end
  end

  def down
    change_table :people do |t|
      t.rename :under_three, :over_three
    end

    people = Person.find(:all)
    people.each do |p|
       p.over_three = p.over_three ? false : true
       p.save
    end
  end
end
