class Label < ApplicationRecord
  has_many :glossary_labels
  has_many :glossaries, :through => :glossary_labels
end
