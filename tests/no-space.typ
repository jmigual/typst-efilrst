#import "../src/lib.typ" as efilrst
#show ref: efilrst.show-rule
#let test = efilrst.reflist.with(
  name: none,    
  list-style: "T1",   // How it looks in the list (e.g., F1.)
  ref-style: "T1",      // How it looks in the reference (e.g., F1)
)

#test(
  counter-name: "test",
  [first], <label1>,
  [second], <label2>,
)

The label without name should not have a space before it (@label2).

