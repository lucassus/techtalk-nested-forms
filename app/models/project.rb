class Project < ActiveRecord::Base
  has_many :tasks
  accepts_nested_attributes_for :tasks, :allow_destroy => true

  validates_presence_of :name
  validates_associated :tasks
end
