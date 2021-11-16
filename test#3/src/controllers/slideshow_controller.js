import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "slide", "active" ]
  initialize() {
    this.index = 0
       this.showCurrentSlide()
  }

  next() {
    this.index++
       this.showCurrentSlide()
  }

  previous() {
    if (this.index > 0) {
      this.index--
         this.showCurrentSlide()
    }
  }

  showCurrentSlide() {
    this.slideTargets.forEach((element, index) => {
      element.hidden = index != this.index
    })
  }

  answerFocus(event) {
    event.preventDefault()
    if (event.currentTarget.classList.contains('selected'))
    {
      event.currentTarget.classList.remove('selected')
    } else {
      event.currentTarget.classList.add('selected')
    }
  }
}
