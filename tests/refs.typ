#set page(width: 10cm)
#set heading(numbering: "1")
#import "../src/lib.typ" as efilrst
#show ref: efilrst.show-rule

#let constraint = efilrst.reflist.with(
  name: "Constraint",
  list-style: "C1)",
  ref-style: "C1",
)

#let property = efilrst.reflist.with(
  name: "Property",
  name-plural: "Properties",
  list-style: "P1)",
  ref-style: "P1",
)

#let unnamed = efilrst.reflist.with(
  list-style: "T1)",
  ref-style: "T1",
)

#constraint([A], <c1>, [B], <c2>, [C], <c3>, [D], <c4>)

#property([E], <p1>, [F], <p2>)

#unnamed([G], <t1>, [H], <t2>)

= Heading <h>

#efilrst.refs(<c1>) = Constraint~C1

#efilrst.refs(<c1>, <c2>) = Constraints~C1 and C2

#efilrst.refs(<c1>, <c2>, <c4>) = Constraints~C1, C2 and C4

#efilrst.refs(<c1>, <c2>, <c4>, last: ", and ") = Constraints~C1, C2, and C4

#efilrst.refs(<p1>, <p2>) = Properties~P1 and P2

#efilrst.refs(<t1>, <t2>) = T1 and T2

#efilrst.refs(<c1>, <p2>) = Constraint~C1 and Property~P2

#efilrst.refs(<c1>, <h>) = Constraint~C1 and Section 1
