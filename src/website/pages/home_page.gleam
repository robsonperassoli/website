import nakai
import nakai/html
import nakai/html/attrs
import gleam/string_builder.{type StringBuilder}
import website/template
// import website/htmx
import website/icons

pub fn render() -> StringBuilder {
  html.Fragment([
    html.div(
      [
        attrs.class(
          "flex sm:items-center sm:justify-center bg-gray-100 w-screen h-screen h-[100svh] text-gray-900 p-4",
        ),
      ],
      [
        html.div(
          [
            attrs.class(
              "w-full max-w-4xl shadow-lg bg-white p-6 sm:p-12 border-8 border-gray-800 rounded-sm flex flex-col sm:flex-row gap-x-8 gap-y-6 sm:justify-between",
            ),
          ],
          [
            html.header([], [
              html.h1_text(
                [attrs.class("text-5xl font-extrabold")],
                "Robson Perassoli",
              ),
              html.h2_text([attrs.class("text-3xl")], "Software Engineer"),
            ]),
            html.section([attrs.class("flex gap-x-3 sm:py-2")], [
              html.a(
                [
                  attrs.href("http://github.com/robsonperassoli"),
                  attrs.target("_blank"),
                ],
                [icons.github("w-8 h-8 inline-block")],
              ),
              html.a(
                [
                  attrs.href("https://linkedin.com/in/robsonperassoli"),
                  attrs.target("_blank"),
                ],
                [icons.linkedin("w-8 h-8 inline-block")],
              ),
            ]),
          ],
        ),
      ],
    ),
  ])
  // html.button_text(
  //   [
  //     htmx.hx_get("/comments/123"),
  //     htmx.hx_swap("outerHTML"),
  //     attrs.class(
  //       "bg-gray-500 text-white rounded-lg shadow-md font-medium px-3 py-1.5",
  //     ),
  //   ],
  //   "Click me!",
  // ),
  |> template.wrap()
  |> nakai.to_string_builder()
}
