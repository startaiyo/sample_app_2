class Word < ApplicationRecord
  validates:word, {presence:true, uniqueness:true}
  belongs_to :user
end
