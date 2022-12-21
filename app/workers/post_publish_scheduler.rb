require 'sidekiq-scheduler'

class PostPublishScheduler
  # Check the publish_at column of the post table
  # If the time is less than the current time,
  # then publish the post by calling the publish method

  include Sidekiq::Worker

  def perform
    posts = Post.where('publish_at < ?', Time.now)
                .where(published: false)
                .where(schedule: true)
    posts.each do |post|
      post.publish
    end
  end
end
