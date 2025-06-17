#import "@local/catppuccin:0.1.0": catppuccin, themes

#let style(doc) = [
    #show: catppuccin.with(themes.latte)

    #set par(justify: true)
    #set quote(block: true)
    #show quote: set pad(x: 5em)
    #show quote: set text(luma(100))

    #doc
]

#let bar(x) = $overline(#x)$
