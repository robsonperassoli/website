import nakai/html.{type Node}
import nakai/html/attrs

pub fn wrap(content: Node(t)) {
  html.Html([], [
    html.Head([
      html.title("Robson Perassoli - Software Engineer"),
      html.link([attrs.href("/public/css/app.css"), attrs.rel("stylesheet")]),
      html.link([
        attrs.href("https://fonts.googleapis.com"),
        attrs.rel("preconnect"),
      ]),
      html.link([
        attrs.href("https://fonts.gstatic.com"),
        attrs.rel("preconnect"),
        attrs.crossorigin(),
      ]),
      html.link([
        attrs.href(
          "https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap",
        ),
        attrs.rel("stylesheet"),
      ]),
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
