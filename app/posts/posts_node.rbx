# frozen_string_literal: true

class PostsNode < LowNode
  Post = Data.define(:title, :body, :username)

  observe '/posts'

  def initialize(event:)
    @posts = PostsData.new.latest.to_a.map do |post|
      Post.new(title: post[:title], body: post[:body], username: post[:user][:username])
    end
    @no_posts = @posts.empty?
  end

  def render(event:)
    <{ Layout: }>
      <h1>{"Posts"}</h1>

      <p>{"Find me in '/app/posts/posts_node.rbx' and my data in '/app/data/posts_data.rb'."}</p>

      <{ if: @no_posts }>
        <p><em>{"No posts yet — run "}<code>{"bin/setup"}</code>{" to add some."}</em></p>
      <{ :if }>

      <{ for: post in: @posts }>
        <article>
          <h2>{post.title}</h2>
          <p>{post.body}</p>
          <small>{"By "}{post.username}</small>
        </article>
      <{ :for }>
    <{ :Layout }>
  end
end
