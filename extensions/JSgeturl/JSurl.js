function urlget() {
		return location.href;
	}

function urlset(code) {
	history.pushState('','',code)
	}