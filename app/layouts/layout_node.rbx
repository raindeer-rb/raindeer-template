# frozen_string_literal: true

class LayoutNode < LowNode
  def render
    <html>
      <head></head>
      <body>
        <header>
          <div class="container">
            <span id="name">{"Name"}</span>
          </div>
        </header>

        <main class="container">
          <{ :slot }>
        </main>

        <footer>
          <div class="container">
            <ul>
              <li><a href="https://raindeer.dev">{"Website"}</a></li>
              <li><a href="https://raindeer.dev/docs">{"Docs"}</a></li>
              <li><a href="https://github.com/raindeer-rb/raindeer">{"Source"}</a></li>
            </ul>
          </div>
        </footer>
      </body>
    </html>
  end
end
