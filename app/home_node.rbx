# frozen_string_literal: true

class HomeNode < LowNode
  observe '/'

  def render
    <{ LayoutNode: }>
      <h1>{"Welcome to Raindeer"}</h1>

      <p>{"Find me in '/app/home_node.rb'."}</p>
    <{ :LayoutNode }>
  end
end
