class Request < ApplicationRecord
  has_and_belongs_to_many :glossaries
end
