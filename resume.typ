#set page(
  paper: "us-letter",
  margin: 40pt,
)

#show heading.where(
  level: 1
): it => block(width: 100%)[
  #set text(32pt, weight: "regular")
  #(it.body)
]

#show heading.where(
  level: 2
): it => text(
  size: 16pt,
  font: "DejaVu Sans Mono",
  stroke: teal,
  weight: "thin",
  it.body,
)

= Elijah Caine M. Voigt

#align(right)[
  elijah.caine.mv\@gmail.com\
  https://elijah.run\
  (971) 533-5545
]

== \$ whoami

== \$ jobs

== \$ history

== \$ more
