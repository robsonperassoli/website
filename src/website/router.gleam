import wisp.{type Request, type Response}
import gleam/string_builder
import gleam/http.{Get, Post}
import website/web
import website/pages/home_page

pub fn handle_request(req: Request) -> Response {
  use req <- web.middleware(req)

  case wisp.path_segments(req) {
    [] -> home_page(req)
    ["comments"] -> comments(req)
    ["comments", id] -> show_comment(req, id)
    _ -> wisp.not_found()
  }
}

fn home_page(req: Request) -> Response {
  use <- wisp.require_method(req, Get)

  let html = home_page.render()

  wisp.ok()
  |> wisp.html_body(html)
}

fn comments(req: Request) -> Response {
  case req.method {
    Get -> list_comments()
    Post -> create_comment(req)
    _ -> wisp.method_not_allowed([Get, Post])
  }
}

fn list_comments() -> Response {
  let html = string_builder.from_string("Comments!!!!")
  wisp.ok()
  |> wisp.html_body(html)
}

fn create_comment(_req: Request) -> Response {
  let html = string_builder.from_string("Created!!!")

  wisp.created()
  |> wisp.html_body(html)
}

fn show_comment(req: Request, id: String) -> Response {
  use <- wisp.require_method(req, Get)

  let html = string_builder.from_string("Comment with id: " <> id)
  wisp.ok()
  |> wisp.html_body(html)
}
