#set page(width: 10cm)
#import "../src/lib.typ" as efilrst
#show ref: efilrst.show-rule

#let constraint = efilrst.reflist.with(
  name: "", 
  list-style: "1.1.1.", 
  ref-style: "1.1.1")

#constraint(
  counter-name: "continuable",
  [A],<r1>,
  ([B],<r1:1>, [C], <r1:2>, ([C1], <r1:2:1>, [C2], <r1:2:2>)),
  [D],<r2>,
  ([E], <r2:1>),
  [F],<r3>,
  ([G], <r3:1>)
)

@r1 = 1

@r1:1 = 1.1

@r1:2 = 1.2

@r1:2:1 = 1.2.1

@r1:2:2 = 1.2.2

@r2 = 2

@r2:1 = 2.1

@r3 = 3

@r3:1 = 3.1
