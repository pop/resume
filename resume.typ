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
  font: "FreeMono",
  stroke: teal,
  weight: "thin",
  it.body,
)

// Short-hand for bold text
#let b(t) = text(weight: "bold")[#t];
// Short-hand for italic text
#let i(t) = text(style: "italic")[#t];
// Short hand for code
#let c(t) = text(font: "FreeMono")[#t];

#let toplevel(name: none, more: text) = {
  [
    #b[#name]
    #h(1fr)
    #more
  ]
};

// Function for printing a role
#let role(org: none, location: none, title: none, date: none, description: none) = {
[
  #set text(weight: "bold")
  #org
  #set text(weight: "regular")
  (
    #text(13pt, location)
  )
  #h(1fr)
  #set text(weight: "bold")
  #title
  #set text(weight: "regular")
  #date
];
text(12pt, description);
};

// Function for printing an experience line
#let xp(head, body) = {
  align(left)[
    #set text(weight: "bold")
    #head
    #set text(weight: "regular")
    #body
  ]
}

///////////////////////////////

#grid(
  columns: (2fr, 1fr),
  rows: (auto, auto),
  text(32pt, [Elijah Caine M. Voigt]),
  align(right)[
    elijah.caine.mv\@gmail.com\
    https://elijah.run\
    (971) 533-5545
  ]
)

== \$ whoami

#align(center)[
  Career interests in creating and improving #b[Open Source solutions] to common problems, #b[public speaking] on interesting topics, and #b[automating] the boring stuff with #i[security], #i[scalability], and #i[efficiency] in mind.
]


#set list(marker: [])
- #toplevel(
    name: [Server-Side Dev],
    more: [
      Rust, Golang, Python, Linux (Debian, Ubuntu, RedHat, Fedora, Amazon).
    ]
  )
- #toplevel(
    name: [Open Source],
    more: [
      Publishing general purpose tools, improving existing code-bases, document upstream projects.
    ]
  )
- #toplevel(
    name: [DevOps],
    more: [
      Terraform, Nomad, Packer, Kubernetes, Docker, AWS (IAM, RDS, S3, EC2), Git & GitHub
    ]
  )
- #toplevel(
    name: [Leadership],
    more: [
      Technical Lead Manager \@ Lob.com, Linux Users Group \@ Oregon State, SCaLE Conference Speaker.
    ]
  )
/*
- #toplevel(
    name: [AI Pair Programming],
    more: [
      Collaborating with tools like Claude Code, Cursor, Co-Pilot to improve speed and code quality.
    ]
  )
*/

== \$ jobs

#set list(marker: [--], indent: 1em)
#role(
  org: [Lob],
  location: [Remote \@ Portland, OR],
  title: [Senior Platform Engineer, Technical Lead Manager],
  date: [04/2021 - Present],
  description: [
      - #xp([Hashicorp Nomad.], [Re-platforming our container orchestration replacing ECS.])
      - #xp([Maintenance.], [Coordinated maintenance of developer infrastructure including RDS and ElasticSearch.])
      - #xp([GitHub Actions.], [Creating re-usable workflows to automate build + deploy of in-house services across engineering.])
      - #xp([Terraform.], [Designing, managing, and provisioning ephemeral, resilient, and reproducible "cattle" infrastructure.])
      - #xp([Tech debt.], [Deprecated a flaky logging pipeline in favor of DataDog Logs, saving time and money.])
  ]
)

#role(
  org: [CloudBolt Software],
  location: [Portland, OR],
  title: [Software Engineer],
  date: [04/2019 - 03/2021],
  description: [
      - #xp([Python.], [Developed integrations with cloud APIs, managed services, maintained Django code, and CLI tooling.])
      - #xp([Tooling.], [Maintained and improved internal tooling, CI/CD pipelines, and customer facing software packages.])
  ]
)

#role(
  org: [Nordstrom Technology],
  location: [Seattle, WA],
  title: [Linux DevOps (Engineer 2)],
  date: [03/2017 - 08/2017, 02/2018 - 04/2019],
  description: [
      - #xp([OS Image Pipeline.], [Lead OS image building pipeline; reduced tech-debt and launched within 3 months of kickoff.])
      - #xp([DevOps.], [Wrote and maintained Chef cookbooks for Linux software; contributed to Open Source cookbooks])
  ]
)

#role(
  org: [CoreOS],
  location: [San Francisco, CA/Remote],
  title: [Documentarian],
  date: [09/2016 - 05/2017],
  description: [
      - #xp([Open Source Docs.], [Reviewed, tested, and contributed to public facing developer focused docs.])
  ]
)

#role(
  org: [Oregon State University Open Source Lab],
  location: [Corvallis, OR],
  title: [Software Developer],
  date: [05/2014 - 09/2016],
  description: [
      - #xp([Iteration Cycles++.], [Decreased time-to-deployment by integrating Docker into test/development workflow.])
      - #xp([Mentorship.], [Taught new developers fundamental "real world" work skills like git and framework usage.])
  ]
)

== \$ history

#role(
  org: [BSCS - Oregon State University],
  location: [Corvallis, OR],
  title: [Undergraduate (GPA 3.53)],
  date: [09/2013 - 12/2017],
  description: [
      - #xp([Major: Computer Science.], [Coursework included Operating Systems I/II, Software Engineering I/II, Defense Against the Dark Arts, Programming Languages, Data Structure, Databases, Web Development and year-long Capstone Project with the Apache Software Foundation.])
      - #xp([Minor: Mathematics & Security.], [Coursework included Cryptography I, Linear Algebra, Numerical Analysis, Computational Number Theory, and self-guided course on Advanced Topics in Cryptography.])
  ]
)

== \$ more

#role(
  org: [OSU Linux Users Group],
  location: [Corvallis, OR],
  title: [President],
  date: [09/2014 - 09/2017],
  description: [
      - #xp([Scheduling Speakers.], [Coordinated Industry Professionals and Alumni from IBM, Nordstrom, CoreOS, Mozilla, and Google to speak, recruit, and eat pizza at weekly meetings])
      - #xp([Weekly Meetings.], [Recruited members to and locals to present on Open Source/Libre Software topics])
      - #xp([URL.], [#c[https://lug.oregonstate.edu]])
  ]
)

#role(
  org: [Souther Annual Linux Expo],
  location: [Los Angeles, CA],
  date: [03/2016],
  title: [Public Speaker],
  description: [
      - #xp([Presented.], ["Crypto: Practical Math", about advanced Cryptography without the usual tedium])
      - #xp([URL.], [#c[https://youtu.be/ddeV3pESy3Y?t=2h10m4s]])
  ]
)

#role(
  org: [DevOps BootCamp],
  location: [Corvallis, OR],
  title: [Educator],
  date: [09/2014 - 06/2015],
  description: [
      - #xp([Lecturer.], [Co-presented weekly topics for students and mentored those who struggled with material])
      - #xp([Curriculum.], [Improved curriculum based on student feedback and supported online students])
      - #xp([URL.], [#c[https://devopsbootcamp.osuosl.org/]])
  ]
)
