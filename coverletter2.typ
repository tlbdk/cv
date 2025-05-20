#import "@local/modern-cv:0.8.0": *

#show: coverletter.with(
  author: (
    firstname: "Troels Liebe",
    lastname: "Bentsen",
    email: "troelsliebebentsen@gmail.com",
    homepage: "https://tlbdk.github.io",
    phone: "(+45) 51 51 18 38",
    github: "tlbdk",
    linkedin: "https://www.linkedin.com/in/troelsliebebentsen/",
    address: "Peter Holms Vej 11, 3. tv.\n2450 Copenhagen, Denmark",
    positions: (
      "Software Engineer",
      "Full Stack Developer",
    ),
  ),
  profile-picture: none,
  language: "dk",
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

#coverletter-content[
  #lorem(100)
]

#coverletter-content[
  #lorem(90)
]

#coverletter-content[
  #lorem(110)
]
