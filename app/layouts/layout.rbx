# frozen_string_literal: true

class Layout < LowNode
  def render
    <html>
      <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.min.css">
        <link rel="stylesheet" href="/app.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=DM+Mono:ital,wght@0,300;0,400;0,500;1,300;1,400;1,500&family=DM+Sans:ital,opsz,wght@0,9..40,100..1000;1,9..40,100..1000&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
        <script src="/app.js" defer></script>
      </head>
      <body>
        <header>
          <div class="container">
            <a id="logo" href="/">{":app_name"}</a>
            <nav id="main-menu">
              <ul>
                <li><a href="/posts"><i class="bi bi-journal-text"></i>{"Posts"}</a></li>
                <li><a href="https://raindeer.dev/docs/getting-started"><i class="bi bi-book"></i>{"Docs"}</a></li>
                <li><a href="https://github.com/raindeer-rb/raindeer"><i class="bi bi-github"></i>{"Source"}</a></li>
              </ul>
            </nav>
          </div>
        </header>

        <div class="container overflow-auto">
          <main id="content">
            <{ :slot }>
          </main>
        </div>

        <footer>
          <div class="container">
            <ul>
              <li><a href="https://reddit.com/r/raindeer"><i class="bi bi-reddit"></i>{"Reddit"}</a></li>
              <li><a href="https://discord.gg/UBex4JQgnX"><i class="bi bi-discord"></i>{"Discord"}</a></li>
              <li><a href="https://www.rubyforum.org/tag/raindeer/97"><i class="bi bi-chat-square-text"></i>{"Forum"}</a></li>
              <li><a href="https://github.com/raindeer-rb/raindeer"><i class="bi bi-github"></i>{"GitHub"}</a></li>
            </ul>
          </div>
        </footer>
      </body>
    </html>
  end
end
