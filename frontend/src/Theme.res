let background = #hex("0e0f10")
let paper = #hex("222527")

let textColor = #hex("f5f5f5")

let string_of_color = color =>
  switch color {
  | #hex(color) => "#" ++ color
  }
