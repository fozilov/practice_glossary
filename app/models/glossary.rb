class Glossary < ApplicationRecord
  has_many :glossary_labels
  has_many :labels, :through => :glossary_labels
  has_one :glossary_request
end
