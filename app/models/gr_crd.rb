class GrCrd < ApplicationRecord

has_many :projects, dependent: :destroy

end
