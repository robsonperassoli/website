import website
import tailwind

// import radiate
// import gleam/io

fn run_tailwind() {
  [
    "--config=tailwind.config.js", "--input=./src/css/app.css",
    "--output=./priv/static/css/app.css",
  ]
  |> tailwind.run()
}

pub fn main() {
  let assert Ok(_) = run_tailwind()

  // let _ =
  //   radiate.new()
  //   |> radiate.add_dir("src")
  //   |> radiate.on_reload(fn(_state, path) {
  //     let assert Ok(_) = compile_tailwind()

  //     io.println("Change in " <> path <> ", reloading!")
  //   })
  //   |> radiate.start()

  website.main()
}
