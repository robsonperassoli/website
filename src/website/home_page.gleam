import nakai
import nakai/html
import nakai/html/attrs
import gleam/string_builder.{type StringBuilder}
import website/views/templates/main
import website/views/htmx

pub fn render() -> StringBuilder {
  html.Fragment([
    html.h1_text([], "It works!"),
    html.button_text(
      [
        htmx.hx_get("/comments/123"),
        htmx.hx_swap("outerHTML"),
        attrs.class(
          "bg-gray-400 text-white rounded-lg shadow-md font-medium px-3 py-1.5",
        ),
      ],
      "Click me!",
    ),
  ])
  |> main.with_template()
  |> nakai.to_string_builder()
}
