
jQuery(($)->

	$$ = (id) ->
		document.getElementById id
	$$('token').src = $$('photo').value

	win = $ window
	scrolling = false
	gotop = $ '.gotop'
	body = $ 'html, body'
	heros = $ '.hero-unit'
	nav = $ '.nav'
	li = nav.find 'li'

	arr = $.map heros, (hero) ->
		$(hero).offset().top

	togClass = (jqObj) ->
		jqObj.addClass('active').siblings('.active').removeClass()

	win.scroll ->
		clearTimeout scrolling
		top = win.scrollTop()
		scrolling = setTimeout ->
			if top > 200 then gotop.fadeIn() else gotop.fadeOut()
			return
		, 50
		temp = top + 200
		if temp < arr[1] then togClass li.eq(0)
		else if temp <= arr[2] then togClass li.eq(1)
		else if temp <= arr[3] then togClass li.eq(2)
		else if temp <= arr[4] then togClass li.eq(3)
		else if temp <= arr[5] then togClass li.eq(4)
		return

	gotop.on 'click', ->
		body.animate 'scrollTop': 0, 300

	threed = $ '#threed'
	css = $$ 'css3d'
	flag = true
	wrapper = $ '.wrapper'
	threed.on 'click', ->
		if flag
			@.innerText = '关闭3D'
			css.href = 'css/3d.css'
		else
			@.innerText = '3D导航'
			css.href = ''
			wrapper.removeClass().addClass 'wrapper'
		togClass nav.find('li').eq(0)
		flag = !flag
		return false

	nav.on 'click', 'li', ->
		that = $(@)
		index = that.index()
		togClass that
		if !flag
			wrapper.removeClass().addClass 'wrapper rotate-' + index
		else
			body.animate 'scrollTop': heros.eq(index).offset().top, 300
		return

	return)