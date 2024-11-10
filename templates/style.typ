// #import "@local/catppuccin:0.1.0": catppuccin, themes
// #import "/templates/permanent.typ": *
// #show: style

#let style(doc) = [
  // #set page(fill: rgb("1E1E2E"))
  // #set text(rgb("CDD6F4"))
  // #show: catppuccin.with(themes.mocha)
  // #set text(font: "Quicksand", weight: 450)
  #set par(justify: true)
  // #set table(
  //   stroke: none,
  //   gutter: 0.2em,
  //   fill: (x, y) =>
  //     if x == 0 or y == 0 { rgb("181825") }
  //     else { rgb("313244") },
  //   inset: (right: 1.5em),
  // )
  #show heading: it => {
    smallcaps(it)
  }
  #show heading.where(level: 1): it => {
    // set text(rgb("B4BEFE"))
    align(center, it)
  }
  // #show heading.where(level: 2): set text(rgb("CBA6F7"))
  // #show heading.where(level: 3): set text(rgb("A6E3A1"))
  // #show heading.where(level: 4): set text(rgb("F9E2AF"))
  // #show heading.where(level: 5): set text(rgb("F5C2E7"))
  // #show heading.where(level: 6): set text(rgb("94E2D5"))
  // #show raw: set text(font: "JetBrainsMono NF")
  // #show math.equation: set text(font: "Fira Math", weight: 300)
  // #show strong: set text(rgb("D9D9FF"))
  #doc
]
