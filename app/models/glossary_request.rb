class GlossaryRequest < ApplicationRecord
  belongs_to :glossary, optional: true
end
