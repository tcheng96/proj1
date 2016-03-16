class Pokemon < ActiveRecord::Base
  belongs_to :trainer

  validates :name, :uniqueness => {:message => "must be unique."}, :presence => {:message => " is missing. Every pokemon needs a name."}
end
