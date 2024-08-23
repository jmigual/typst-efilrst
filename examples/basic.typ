#import "../src/lib.typ" as reflist

#show ref: reflist.showRule


#reflist.reflist(
  [My cool constraint A],<c:a>,
  [My also cool constraint B],<c:b>,
  [My non-refernceable constraint C],
  list_style: "C1)",
  ref_style: "C1",
  name: "Constraint"
)

See how my @c:a is better than @c:b.

