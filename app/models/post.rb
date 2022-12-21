class Post < ApplicationRecord
  def publish
    update(published: true, schedule: false)
  end
end
