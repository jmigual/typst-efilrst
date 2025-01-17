#set page(width: 10cm)

#import "../src/lib.typ" as efilrst

#show ref: efilrst.show-rule

#let constraint = efilrst.reflist.with(
  name: "Constraint", 
  list-style: "C1.1.1)", 
  ref-style: "C1.1.1")

#constraint(
  counter-name: "continuable",
  [My cool constraint A],<c:a>
)

Let's test non-breaking space for the @c:a.


