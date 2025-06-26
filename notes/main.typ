#import "@local/simple-note:0.0.1": *
#show: zebraw


#show: simple-note.with(
  title: [
    Computing Infrastructures
  ],
  date: datetime(year: 2025, month: 2, day: 17),
  authors: (
    (
      name: "Rao",
      github: "https://github.com/Peng-Rao",
      homepage: "https://github.com/Peng-Rao",
    ),
  ),
  affiliations: (
    (
      id: "1",
      name: "Politecnico di Milano",
    ),
  ),
  // cover-image: "./figures/polimi_logo.png",
  background-color: "#DDEEDD",
)

#include "chapters/chapter1.typ"
