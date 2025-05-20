#import "@local/modern-cv:0.8.0": *

#show: coverletter.with(
  author: (
    firstname: "Troels Liebe",
    lastname: "Bentsen",
    email: "tlb@nversion.dk",
    phone: "(+45) 51 51 18 38",
    github: "tlbdk",
    linkedin: "troelsliebebentsen",
    address: "Peter Holms Vej 11, 3. tv.\n2450 Copenhagen, Denmark",
    positions: (
      "",
      "Full Stack Developer",
    ),
  ),
  profile-picture: image("./img/tlb-dark.jpg"),
  // change this to match the language available in 'lang.toml'
  language: "en",
  font: "Times New Roman",
  // Remove the following line to show the footer
  // Or set the value to `true`
  show-footer: false,
  // set this to `none` to show the default or remove it completely
  closing: [],
  // see typst "page" documentation for more options
  paper-size: "a4"
)

#hiring-entity-info(entity-info: (
  target: "Some Company Recruitement Team",
  name: "Some Company, Inc.",
  street-address: "Some Street 123",
  city: "Some City, Some State 12345",
))

#letter-heading(
  job-position: "Software Engineer",
  addressee: "Sir or Madame",
)

= About Me
#coverletter-content[
  #lorem(80)
]

= Why Google?
#coverletter-content[
  #lorem(90)
]

= Why Me?
#coverletter-content[
  #lorem(100)
]
