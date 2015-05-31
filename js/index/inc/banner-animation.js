var bannerAnimation = {
	currentState : 1,

	init : function() {
		this.createAnimation();
	},

	createAnimation : function() {
		var totalBanner, $banner, $bannerDesc, nextState;

		totalBanner = banner.length;
		$banner = $("#banner");
		$bannerDesc = $("#banner-desc");
		
		setInterval(function () {
			nextState = bannerAnimation.currentState + 1 > totalBanner ? 1 : bannerAnimation.currentState + 1;

			if(banner[nextState - 1].title != "") {
				$bannerDesc.removeClass("hidden");
				$bannerDesc.find(".title").find("a").html(banner[nextState - 1].title).attr("href", banner[nextState - 1].url);
				$bannerDesc.find(".title").find(".description").html(banner[nextState - 1].text);
			}
			else {
				if(!$bannerDesc.hasClass("hidden")) $bannerDesc.addClass("hidden");
			}
            $banner.css("background-image", "url("+config.url+banner[nextState - 1].source+")");



            bannerAnimation.currentState = nextState;
        }, 8000);
	}
}