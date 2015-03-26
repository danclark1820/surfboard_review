class Board < ActiveRecord::Base
  validates_presence_of :company
  validates_presence_of :name
  validates :name, uniqueness: {scope: [:company]}, case_sensitive: false
end
