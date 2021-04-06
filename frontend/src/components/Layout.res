open CssJs

global(.
  "*",
  [
    //
    margin(px(0)),
    padding(px(0)),
    boxSizing(borderBox),
  ],
)

global(.
  "html, body, #__next",
  [
    //
    height(pct(100.)),
    width(pct(100.)),
    minWidth(px(410)),
  ],
)

global(. "ul, ol", [listStyleType(#none)])

global(.
  "*, input, button, select, textarea, optgroup, option",
  [
    fontFamilies([
      #custom("-apple-system"),
      #custom("Montserrat"),
      #custom("BlinkMacSystemFont"),
      #custom("Segoe UI"),
      #custom("Roboto"),
      #custom("Oxygen"),
      #custom("Ubuntu"),
      #custom("Cantarell"),
      #custom("Fira Sans"),
      #custom("Droid Sans"),
      #custom("Helvetica Neue"),
      #sansSerif,
    ]),
    unsafe("-webkit-font-smoothing", "antialiased"),
    unsafe("-moz-osx-font-smoothing", "grayscale"),
  ],
)

module Styles = {
  let container = style(. [backgroundColor(Theme.background), height(pct(100.))])

  let h1 = style(. [
    //
    color(hex("f9f9f9")),
    fontSize(px(26)),
    userSelect(#none),
  ])

  let h2 = style(. [
    //
    color(hex("f9f9f9")),
    fontSize(px(20)),
    userSelect(#none),
  ])

  let h3 = style(. [
    //
    color(hex("f9f9f9")),
    fontSize(px(18)),
    userSelect(#none),
  ])

  let p = style(. [
    //
    color(hex("f9f9f9")),
    fontSize(px(16)),
    lineHeight(px(22)),
  ])
}

@react.component
let make = (~children) => {
  <div className=Styles.container> children </div>
}
