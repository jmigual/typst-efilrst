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

#let nested = efilrst.reflist.with(
  name: "Constraint",
  list-style: "1.a)",
  ref-style: "1.a",
)

#let law = efilrst.reflist.with(
  name: "Law",
  list-style: "L1)",
  ref-style: "L1",
  ref-joiner: none,
)

#let step = efilrst.reflist.with(
  name: "Step",
  name-plural: none,
  list-style: "S1)",
  ref-style: "S1",
)

#let constraint-d = efilrst.reflist.with(
  name: "Constraint",
  name-plural: "Constraints",
  list-style: "D1)",
  ref-style: "D1",
)

#let rule = efilrst.reflist.with(
  name: [Rule],
  list-style: "R1)",
  ref-style: "R1",
)

#constraint([A], <c1>, [B], <c2>, [C], <c3>, [D], <c4>)

#nested([I], <n1>, [J], <n2>, ([J.a], <n2a>, [J.b], <n2b>), [K], <n3>)

#law([L], <l1>, [M], <l2>)

#step([N], <s1>, [O], <s2>)

#rule([Q], <r1>, [R], <r2>)

#constraint-d([U], <d1>)

#property([E], <p1>, [F], <p2>)

#unnamed([G], <t1>, [H], <t2>)

= Heading <h>

#efilrst.refs(<c1>) = Constraint~C1

#efilrst.refs(<c1>, <c2>) = Constraints~C1 and C2

#efilrst.refs(<c1>, <c2>, <c4>) = Constraints~C1, C2 and C4

#efilrst.refs(<c1>, <c2>, <c4>, last: ", and ") = Constraints~C1, C2, and C4

#efilrst.refs(<p1>, <p2>) = Properties~P1 and P2

#efilrst.refs(<t1>, <t2>) = T1 and T2

#efilrst.refs(<n2a>, <n2b>) = Constraints~2.a and 2.b

#efilrst.refs(<n1>, <n2a>, <n2b>, <n3>) = Constraints~1, 2.a, 2.b and 3

#efilrst.refs(<l1>, <l2>) = Laws L1 and L2

#efilrst.refs(<s1>, <s2>) = S1 and S2

#efilrst.refs(<r1>, <r2>) = Rules~R1 and R2

#efilrst.refs(<c1>, <c2>, <c1>) = Constraints~C1 and C2

#efilrst.refs(<c1>, <d1>) = Constraints~C1 and D1

#efilrst.refs(<c1>, <p2>) = Constraint~C1 and Property~P2

#efilrst.refs(<c1>, <h>) = Constraint~C1 and Section 1
