#import "style.typ": *
#let aside(term) = {
  align(center,
    text(rgb("#CDD6F4"),
      rect(fill:rgb("#181825"))[
        *Note*\
        #term
      ]
    )
  )
}
#let check() = {text(fill:green)[$checkmark$]}
#let cross() = {text(fill:red)[$times$]}
