class ChangeStringToIntegerInRatingReview < ActiveRecord::Migration[8.1]
  def change
    change_column :reviews, :rating, :integer, using: 'rating::integer'
  end
end
