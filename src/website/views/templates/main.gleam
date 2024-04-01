import nakai/html.{type Node}
import nakai/html/attrs

pub fn with_template(content: Node(t)) {
  html.Html([], [
    html.Head([
      html.title("Robson Perassoli - Software Engineer"),
      html.link([attrs.href("/public/css/app.css"), attrs.rel("stylesheet")]),
    ]),
    html.Body([], [
      content,
      html.Element(
        "script",
        [attrs.src("https://unpkg.com/htmx.org@1.9.11")],
        [],
      ),
    ]),
  ])
}
