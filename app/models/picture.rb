class Picture < ApplicationRecord
  belongs_to :imageble, polymorphic: true, optional: true
end
