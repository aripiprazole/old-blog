open ReactIcons

module Styles = {
  open CssJs

  let container = style(. [
    height(pct(100.)),
    width(px(800)),
    margin2(~v=px(0), ~h=auto),
    display(flexBox),
    flexDirection(column),
    justifyContent(center),
  ])

  let card = style(. [
    // display
    display(flexBox),
    gridGap(px(12)),
    // margin
    unsafe("height", "fit-content"),
    // border
    borderRadius(px(12)),
    padding(px(16)),
    boxShadow(Shadow.box(~x=px(0), ~y=px(8), rgba(0, 0, 0, #percent(0.25)))),
    // background
    backgroundColor(Theme.paper),
  ])

  let sidebar = style(. [
    // display
    gridArea(ident("sidebar")),
    display(flexBox),
    justifyContent(center),
    // border
    borderRight(px(1), solid, Theme.textColor),
    padding(px(12)),
    // child
    selector("img", [objectFit(cover), borderRadius(px(12))]),
    selector("img:hover", [transform(scale(1.05, 1.05))]),
  ])

  let socialMedias = style(. [
    // display
    display(flexBox),
    flexWrap(wrap),
    gridGap(px(12)),
    // dimensions
    width(fitContent),
    margin(auto),
    padding2(~h=px(0), ~v=px(12)),
  ])

  let media = style(. [
    //
    selector("&:hover", [filter([#brightness(90.)])]),
  ])

  let header = style(. [
    //
    gridArea(ident("header")),
    padding2(~v=px(12), ~h=px(0)),
  ])

  let content = style(. [
    //
    gridArea(ident("content")),
  ])
}

let socialMedias = [
  ("Github", "https://github.com/LorenzooG"),
  ("Twitter", "https://twitter.com/loorenzog"),
  ("Instagram", "https://instagram.com/lorenzoo.guima"),
]

let getIcon = string =>
  switch string {
  | "Github" => <Fi.Github color={Theme.textColor->Theme.string_of_color} size=32 />
  | "Twitter" => <Fi.Twitter color={Theme.textColor->Theme.string_of_color} size=32 />
  | "Instagram" => <Fi.Instagram color={Theme.textColor->Theme.string_of_color} size=32 />
  | _ => React.null
  }

@react.component
let default = () => {
  <Layout>
    <div className=Styles.container>
      <section className=Styles.card>
        <aside className=Styles.sidebar>
          <Next.Image src="/images/profile.jpg" width=520 height=520 />
        </aside>
        <div className=Styles.content>
          <header className=Styles.header>
            <h1 className=Layout.Styles.h1>
              {React.string(`Hello, i am Lorenzo Guimarães 👋`)}
            </h1>
          </header>
          <main>
            <p className=Layout.Styles.p>
              {React.string(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid sapiente ullam provident quas, obcaecati iure magnam cupiditate repellendus similique dolores voluptate cum id sequi mollitia corporis labore. Et, fuga neque!",
              )}
            </p>
          </main>
          <ul className=Styles.socialMedias>
            {socialMedias
            ->Belt.Array.map(((media, link)) =>
              <li key=media> <a href=link className=Styles.media> {media->getIcon} </a> </li>
            )
            ->React.array}
          </ul>
        </div>
      </section>
    </div>
  </Layout>
}
