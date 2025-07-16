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

#let title(name, note) = {
  align(left)[
    #heading(level: 2)[#name ]
    #text(
      size: 12pt,
      font: "FreeMono",
      stroke: rgb("#999999"),
  )[\# #note]
  ]
};

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

#title([whoami], [an existential question...])

#align(center)[
  #b[Automating] the boring stuff with #i[security], #i[scalability], and #i[cost] in mind.
  #b[Developing] full-stack software with Rust.
  #b[Sharing knowledge] with talks, docs, and writing.
  #b[Open Sourcing] general purpose and re-usable solutions.
]


#set list(marker: [])
- #toplevel(
    name: [Server-Side Dev],
    more: [
      Rust (Bevy, Axum, Tokio), Golang, Python, Linux (NixOS, Debian, Ubuntu, RedHat, Amazon).
    ]
  )
- #toplevel(
    name: [Platform Engineering],
    more: [
      Terraform, Nomad, Packer, Kubernetes, Docker, AWS (IAM, RDS, S3, EC2), git & GitHub.
    ]
  )
- #toplevel(
    name: [Leadership],
    more: [
      Technical Lead Manager \@ Lob.com, Linux Users Group \@ Oregon State U, Conference Speaker.
    ]
  )
- #toplevel(
    name: [AI Collaboration],
    more: [
      Working with tools like Claude Code, Cursor, Co-Pilot to improve dev speed and code quality.
    ]
  )

#title([jobs], [work i'm doing and have done.])

#set list(marker: [--], indent: 1em)
#role(
  org: [Lob],
  location: [Remote \@ Portland, OR],
  title: [Senior Platform Engineer, Technical Lead Manager],
  date: [04/2021 - Present],
  description: [
  - #xp([Cattle Infra.], [Designed, managed, provisioned ephemeral, resilient, and reproducible infrastructure.])
  - #xp([Observability.], [Migrated our services from a flaky self-hosted ELK stack to managed DataDog Logs.])
  - #xp([CI/CD.], [Created re-usable GitHub Actions to automate build & deploy for most of our services.])
  - #xp([Re-Platformed.], [Migrated our services from AWS ECS to Hashicorp Nomad with zero downtime.])
  - #xp([Cost Management], [Audited and optimized AWS bill with cost savings and reserved instances.])
  - #xp([Maintenance.], [Ran zero-downtime maintenance of critical infrastructure like RDS and ElasticSearch.])
  ]
)

#role(
  org: [CloudBolt Software],
  location: [Portland, OR],
  title: [Software Engineer],
  date: [04/2019 - 03/2021],
  description: [
      - #xp([Python.], [Integrated our product with Cloud APIs like AWS, Google Cloud, and Hashicorp Terraform.])
      - #xp([Tooling.], [Created CI/CD pipelines for internal tooling and customer facing software releases.])
  ]
)

#role(
  org: [Nordstrom Technology],
  location: [Seattle, WA],
  title: [Linux DevOps (Engineer 2)],
  date: [03/2017 - 08/2017, 02/2018 - 04/2019],
  description: [
      - #xp([DevOps.], [Wrote Chef Cookbooks for business critical Linux and Solaris systems in our data centers.])
      - #xp([Telemetry tooling.], [Wrote custom software in Go to report Prometheus metrics for legacy systems.])
  ]
)

#role(
  org: [CoreOS],
  location: [San Francisco, CA/Remote],
  title: [Documentarian],
  date: [09/2016 - 05/2017],
  description: [
      - #xp([Migration Docs.], [Reviewed, tested, and contributed to public facing Kubernetes developer docs.])
  ]
)

#role(
  org: [Oregon State University Open Source Lab],
  location: [Corvallis, OR],
  title: [Software Developer],
  date: [05/2014 - 09/2016],
  description: [
      - #xp([Iteration Cycles++.], [Decreased time-to-deploy by integrating Docker into test/development workflow.])
      - #xp([Mentorship.], [Taught student devs "real world" work skills like #c[git], tracking work, using frameworks.])
  ]
)

#title([history], [school and extracurricular activities.])

#role(
  org: [BSCS - Oregon State University],
  location: [Corvallis, OR],
  title: [Undergraduate (GPA 3.53)],
  date: [09/2013 - 12/2017],
  description: [
      - #xp([Major: Computer Science.], [Curriculum included Operating Systems I/II, Software Engineering I/II, #i[Defense Against the Dark Arts] (#i[ask me about it]), Programming Languages, Data Structure, Databases, Web Development, and a Capstone Project with the Apache Software Foundation.])
      - #xp([Minor: Math & Security.], [Coursework included Cryptography I, Linear Algebra, Numerical Analysis, Computational Number Theory, and self-guided course on Advanced Topics in Cryptography.])
  ]
)

#role(
  org: [OSU Linux Users Group],
  location: [Corvallis, OR],
  title: [President],
  date: [09/2014 - 09/2017],
  description: [
      - #xp([Running the Show.], [Scheduled in-person speakers from IBM, Nordstrom, CoreOS, Mozilla, and Google to present, recruit, and host discussions. Events like Linux Installfest, Flame-War Debates.])
      - #xp([URL.], [#c[https://lug.oregonstate.edu]])
  ]
)

#role(
  org: [DevOps BootCamp],
  location: [Corvallis, OR],
  title: [Educator],
  date: [09/2014 - 06/2015],
  description: [
      - #xp([Lecturer.], [Co-presented weekly lessons, improved cirriculum, mentored students in-person & online.])
      - #xp([URL.], [#c[https://devopsbootcamp.osuosl.org/]])
  ]
)

#title([more], [stuff that doesn't fit above.])

#role(
  org: [Indie Gamedev],
  location: [Portland, OR],
  title: [Hobbyist],
  date: [2019 - Present],
  description: [
      - #xp([Programming Games in Rust.], [Using the Bevy Game Engine. Sometimes I even ship them!])
      - #xp([URL.], [#c[https://games.elijah.run/]])
  ]
)

#role(
  org: [Conference Talks],
  location: [California/Remote],
  title: [Public Speaker],
  description: [
      - #xp([Replatforming with Minimal Drama and Downtime.], [Lob's migration from ECS to Nomad.])
          - #xp([Hashitalks 2023.], [#c[https://youtu.be/KSmq524eQuQ]])
      - #xp([Crypto: Pratical Math.], [Advanced topics in Cryptography, made easily digestible.])
          - #xp([SCALe, 2016.], [#c[https://youtu.be/ddeV3pESy3Y?t=2h10m4s]])
  ]
)
