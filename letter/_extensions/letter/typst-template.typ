// This function gets your whole document as its `body`
// and formats it as a simple letter.
#let letter(
  // The letter's sender, which is display at the top of the page.
  sender: none,

  // The letter's recipient, which is displayed close to the top.
  recipient: none,

  // The date, displayed to the right.
  date: none,

  // The subject line.
  subject: none,

  // The name with which the letter closes.
  name: none,

  // The letter's content.
  body
) = {
  // Configure page and text properties.
  set page(paper: "a4", margin: (top: 2cm))
  set text(font: "PT Sans", size: 12pt)
  set par(justify: true)

  // Display sender at top of page. If there's no sender
  // add some hidden text to keep the same spacing.
  text(12pt, if sender == none {
    hide("a")
  } else {
    sender
  })

  v(1.8cm)

  // Display recipient.
  recipient

  v(0.5cm)

  // Display date. If there's no date add some hidden
  // text to keep the same spacing.
  align(right, if date != none {
    date
  } else {
    hide("a")
  })

  v(2cm)

  // Add the subject line, if any.
  if subject != none {
    strong(subject)
  }
  
  v(0.5cm)
  
  // Add body and name.
  body
  v(1.25cm)
  name
}
