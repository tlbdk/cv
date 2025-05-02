#import "@local/modern-cv:0.8.0": *

#let extended = sys.inputs.at("output", default: "simple").contains("extended")

#show: resume.with(
  author: (
    firstname: "Troels Liebe Bentsen",
    lastname: "",
    email: "tlb@nversion.dk",
    phone: "(+45) 51 51 18 38",
    github: "tlbdk",
    birth: "1981",
    linkedin: "troelsliebebentsen",
    address: "Peter Holms Vej 11, 3tv, 2450 Copenhagen SV, Denmark",
    positions: (
      "Tech Leadership", "Cloud Architecture", "Software Development", "DevOps", "Embedded Systems",
    ),
  ),
  profile-picture: image("./img/tlb-dark.jpg"),
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
  paper-size: "a4",
)

= Summary
#resume-item[
  I’m passionate about technology, people, culture and building high-performing tech companies that deliver real business value with minimal overhead, low employee turnover and a healthy culture. I have worked with all aspects of technology for over 20 years, in small and large organisations, as a founder, consultant, software developer, architect and engineering manager at all levels.
]

#resume-item[
  Personally I’m a father of two, I love to travel and I’m a big fan of the outdoors. I enjoy hiking, biking, running and swimming. I also love to listen to audiobooks, especially about history, technology and global affairs.
]

= Experience

#resume-entry(
  title: "Interim VP of Engineering",
  location: "Copenhagen, Denmark",
  date: "2024-12 - 2025-04 (5 months)",
  description: "Portchain ApS",
  title-link: "https://portchain.com",
)

#resume-item[
  Portchain provides digitized information-sharing system that transforms the industry, enabling Just-In-Time operations, and significantly boosting productivity while reducing emissions. By combining intuitive UX design with advanced analytics and cutting-edge web technologies, Portchain enhances operational performance for shipping companies.
]
#resume-item[
  As interim VP of Engineering I helped hire the initial onsite engineering team, helped clean up software licenses and significantly reduced non-fte costs. I also helped set a new technical direction and culture for the company that will allow them to scale their engineering team going forward. I also managed the exsiting engineering team and helped them with their day to day work until the new VP of Engineering was hired.
]
#if extended [
  #resume-item[
    - Google Cloud, AWS, Google Workspace, NodeJS, TypeScript, CloudRun, Github Actions 
    - Hiring, Team building, Culture, Process
  ]
]

#resume-entry(
  title: "Chief Technical Officer",
  location: "Copenhagen, Denmark",
  date: "2017-05 - 2024-12 (7 years)",
  description: "Connected Cars A/S",
)

#resume-item[
  Connected Cars is a midsized auto-tech company focusing on importers, leasing and dealerships. It was founded in 2016 by Semler Group to give car owners a better digital experience by utilizing in-vehicle data. (know as minVolkswagen, minSeat, minSkoda, mitAudi in Denmark and under many different brands globally). 
]
#if extended [
  #resume-item[
    Put simply, a box is installed in your car and you get a nice app that shows charge/fuel level, health, drive history, service, etc. and the workshops get a web app where they can manage their customers so service calls, oil changes, repairs, etc. are automated based on the data from the car leading to more loyal customers and more efficient workshops.
  ]
]
#resume-item[
  As CTO I helped build a strong self managing engineering team of 35 people and rebuilt the initial proof of concept the company was launched on so it was capable of scaling to multi-regional global deployment covering EMEA, APAC and LATAM with close to half a million installations and terabytes of data ingested per month. The tech stack covered frontend, mobile, backend, datascience, hardware and embedded development. I also did vendor management, negotiated contracts, set up compliance processes, helped with global homologation, customer security reviews and approvals for large customers like Volkswagen, Postnord, CPH Airport, Ayvens and many others.
]
#if extended [
  #resume-item[
    - Google Cloud, Google Workspace, React, ReactNative, NodeJS, TypeScript, C, Rust, Python, Go, Kubernetes, MySQL, BigQuery, Yocto, Embedded Linux, CI/CD, CloudBuild, Github Actions
    - Hiring, Agile, Team building, Culture, Process, Security, Architecture, DevOps, CI/CD
    - TISAX, ISO27001, ISO9001, GDPR, CIS18, UNECE R155/R156
  ]
]


#resume-entry(
  title: "Team lead and Backend Developer",
  location: "Copenhagen, Denmark",
  date: "2016-04 - 2017-04 (1 year)",
  description: "Danske Bank, MobileLife",
)
#resume-item[
  Danske Bank is a Nordic bank with 3.5 million customers and 20,000 employees.
]
#resume-item[
   I was part of the MobileLife team that was responsible for building the next generation of banking products. The team was a mix of internal and external resources and was responsible for building the backend services and APIs for June by Danske Bank, an award-winning digital investment and advisory platform named Best Robo-Advisor in Europe by the Financial Times. My main focus areas was on the backend architecture, security, customer on-boarding and tech team recruitment.
]
#if extended [
  #resume-item[
    - AWS, TFS, .Net, C\#, SQL Server, Mainframe, Java, Go
    - Hiring, Security, Architecture, DevOps, CI/CD, Agile
  ]
]

#resume-entry(
  title: "Expert IT Architect",
  location: "Copenhagen, Denmark",
  date: "2015-01 - 2016-03 (1 year)",
  description: "Nordea, Digital Banking",
)
#resume-item[
  Nordea is a Nordic bank with 10 million customers and 31,000 employees. 
]
#resume-item[
  I was part of the Digital Banking team that was responsible for building the next generation of mobile banking apps for the bank. The team was a mix of internal and external resources and was responsible for building the backend services and APIs for Nordea's mobile banking platform. My main focus areas was on the backend architecture, security, customer on-boarding and tech team recruitment.
]

#if extended [
  #resume-item[
    - AWS, Kotlin, Java, SpringBoot, Oracle, SQL Server, Mainframe
    - Hiring, Security, Architecture, Team building, Culture, Process
  ]
]

#resume-entry(
  title: "Partner / CTO",
  location: "Copenhagen, Denmark",
  date: "2009-01 - 2014-05 (5 years)",
  description: "IT-Kartellet",
)
#resume-item[
 IT-Kartellet is an IT consultancy that does software development, technical project management, design and solution architecture on a number of different platforms and technologies. I was one of the two founding partners and helped build the company to 17 employees. I had many different roles during my time there, but one of my key roles was always ensuring technical excellence both when hiring new employees, and when delivering to customers.
]
#resume-item[
 - Damco(Maersk group) - IT Architect, Lead Developer and Technical project manager (4 years)
 - Copenhagen Business School - Technical project manager and developer (1 year) 
 - Novasol - Devops specialist and developer
 - Nota - Developer
]

#resume-entry(
  title: "Other jobs",
  location: "Copenhagen, Denmark",
  date: "1998 - 2009 (11 years)",
  description: "Various",
)

#resume-item[
  - System Administrator and Developer at InfoPro ApS (2008-2009)
  - IT administrator at The National Union of Students in Denmark (DSF) (2006-2007)
  - System Administrator at IT University of Copenhagen (ITU) (2003-2005)
  - Linux Consultant at Xenux ApS (2003)
  - Unix/Linux Consultant at catpipe Systems ApS (2002)
  - Pc-supporter at Rigshospitalet (1998-1999)
]

= Education

#resume-entry(
  title: "Copenhagen Business School",
  location: "Copenhagen, Denmark",
  date: "2006 - 2008",
  description: "Master of Computer Science, Organizational Theory, and Economics (cand.merc.dat)",
)

#resume-item[
  Member of CBS Students Board, Co-organizer of CBS Case Competition
]

#resume-entry(
  title: "Copenhagen Business School",
  location: "Copenhagen, Denmark",
  date: "2003 - 2006",
  description: "Bachelors of Science in Economics and Computer Science (ha.dat)",
)

#resume-item[
  Member of DSR Internation forum, Board of Studies, Party committee, CBS International Committee.
]