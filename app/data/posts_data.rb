# frozen_string_literal: true

# A repository for the posts table. Constants like Posts and Users are mapped to tables.
class PostsData < LowData
  # Posts with their user nested inside, newest first.
  def latest(count: 10)
    (Posts[:title, :body] + Users[:username]) ^ -Col[:created_at] * count
  end
end
