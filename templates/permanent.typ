#import "style.typ": *
#let aside(term) = {
  align(center,
    text(rgb("#453D25"),
      rect(fill:rgb("#FFEEBA"))[
        *Note*\
        #term
      ]
    )
  )
}
#let check() = {text(fill:green)[$checkmark$]}
#let cross() = {text(fill:red)[$times$]}
