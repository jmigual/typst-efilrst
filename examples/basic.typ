#set page(width: 10cm)

#import "../src/lib.typ" as efilrst

#show ref: efilrst.show-rule

#let constraint = efilrst.reflist.with(
  name: "Constraint", 
  list-style: "C1.1.1)", 
  ref-style: "C1.1.1")

#constraint(
  counter-name: "continuable",
  [My cool constraint A],<c:a>,
  [My also cool constraint B],<c:b>,
  [My non-referenceable constraint C],
)

See how my @c:a is better than @c:b but not as cool as @c:e.

#constraint(
  counter-name: "continuable",
  [We continue the list with D],<c:d>,
  [And then add constraint E],<c:e>,
)

#constraint(
  [This is a new list!],<c:f>,
  (
    [And it has a sublist!],<c:g>,
    [With a constraint H],<c:h>,
  )
)

#constraint(
  [This is another list!],<c:i>,
)

