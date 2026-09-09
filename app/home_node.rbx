# frozen_string_literal: true

class HomeNode < LowNode
  observe '/'

  def render
    <{ Layout: }>
      <h1>{"Welcome to Raindeer"}</h1>

      <p>{"Find me in '/app/home_node.rb'."}</p>

      <p>
        {"Find and replace `:app_name` or use "}
        <a href="https://raindeer.dev/docs/translations">{"Translations"}</a>
        {" to configure the placeholder to your application's name."}
      </p>
    <{ :Layout }>
  end
end
