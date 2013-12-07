
goTop = document.querySelector 'a.gotop'
goTopIsShown = scrolling = false

window.addEventListener 'scroll', ->
  clearTimeout scrolling
  scrolling = setTimeout ->
    top = document.body.scrollTop
    if top > 100
      if !goTopIsShown
        goTop.style.display = 'block'
        goTopIsShown = true
    else if goTopIsShown
      goTop.style.display = 'none'
      goTopIsShown = false
  , 100
, false

goTop.addEventListener 'click', ->
  window.scrollTo 0
, false