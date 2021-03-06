# -*- encoding : utf-8 -*-
class Group < ActiveRecord::Base
  attr_accessible :description, :name
  validates_presence_of :name
  validates_uniqueness_of :name
  has_and_belongs_to_many :users
end
