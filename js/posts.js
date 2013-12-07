// Generated by CoffeeScript 1.6.3
(function() {
  var goTop, goTopIsShown, scrolling;

  goTop = document.querySelector('a.gotop');

  goTopIsShown = scrolling = false;

  window.addEventListener('scroll', function() {
    clearTimeout(scrolling);
    return scrolling = setTimeout(function() {
      var top;
      top = document.body.scrollTop;
      if (top > 100) {
        if (!goTopIsShown) {
          goTop.style.display = 'block';
          return goTopIsShown = true;
        }
      } else if (goTopIsShown) {
        goTop.style.display = 'none';
        return goTopIsShown = false;
      }
    }, 100);
  }, false);

  goTop.addEventListener('click', function() {
    return window.scrollTo(0);
  }, false);

}).call(this);