# frozen_string_literal: true

class HomeNode < LowNode
  observe '/'

  def render
    <{ Layout: }>
      <figure class="blueprint-deer">
        <img src="/assets/logo.png" alt="Raindeer logo, an illustrated deer with large antlers"/>
        <figcaption>{"FIG. 1 — RAINIFER TARANDUS"}</figcaption>
      </figure>

      <h1>{"Welcome to Raindeer"}</h1>

      <p>{"Edit this page at '/app/home_node.rb'."}</p>

      <p>
        {"Find and replace `:app_name` or use "}
        <a href="https://raindeer.dev/docs/translations">{"Translations"}</a>
        {" to set the placeholder to your application's name."}
      </p>
    <{ :Layout }>
  end
end
