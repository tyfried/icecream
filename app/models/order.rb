class Order < ApplicationRecord
  belongs_to :user, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
end
