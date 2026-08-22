
#let proof(body, heading: [], kind: "proof", supplement: "Proof", labelName: none, color: blue, float: true) = {
  let stroke = 1pt + color.lighten(90%)
  let fill = color.lighten(90%)
  let title
  set figure.caption(position: top)
  set figure(placement: none)
  show figure.caption.where(body: heading): (it) => {
    block(width: 100%, stroke: stroke, fill: fill, inset: 8pt, it)
  }
  place(auto, float: float, block(width: 100%, [
    #figure(kind: kind, supplement: supplement, gap: 0pt, [
      #set align(left);
      #set figure.caption(position: bottom)
      #block(width: 100%, fill: luma(253), stroke: stroke, inset: 8pt)[#body]
    ], caption: heading)
    #if(labelName != none){label(labelName)}
  ]))
}