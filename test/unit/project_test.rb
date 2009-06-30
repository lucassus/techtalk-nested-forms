require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  should_have_many :tasks
  should_validate_presence_of :name
end
