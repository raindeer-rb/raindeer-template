# frozen_string_literal: true

class ExampleNode < LowNode
  observe '/example'

  def render(event:) # rubocop:disable Lint/UnusedMethodArgument
    <{ LayoutNode: }>
      <p>{"Visit '/example' to see the rendered output of this node."}
    <{ :LayoutNode }>
  end
end
