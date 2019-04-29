$(document).ready(function () {
	headerNavMapping();
	headerPhoneMapping();
	toggleHeaderMenuMobile();
	hideHeaderMenuMobile();

	progressBar();

	objectFitPolyfill();
	homeSliderInit();

	backToTop();
	onSelectNavChange();

	footerFormMapping();

	breadcrumbTitleMapping();

	//Matbang
	matBang01ImageMapInit();
	matBang02ImageMapInit();
	matBang03ImageMapInit();
	popupImagesV1Init();

	tienichImageMap();
});

function headerNavMapping() {
	try {
		return new MappingListener({
			selector: "header nav",
			mobileWrapper: ".mobile-header",
			mobileMethod: "appendTo",
			desktopWrapper: ".desktop-header",
			desktopMethod: "appendTo",
			breakpoint: 992
		}).watch()
	} catch (e) {}
}

function headerPhoneMapping() {
	try {
		return new MappingListener({
			selector: "header .phone",
			mobileWrapper: ".logo-mobile",
			mobileMethod: "insertAfter",
			desktopWrapper: ".desktop-header",
			desktopMethod: "appendTo",
			breakpoint: 992
		}).watch()
	} catch (e) {}
}

function toggleHeaderMenuMobile() {
	if ($(window).outerWidth() < 992) {
		$('body').on('click', '.btn-header-menu', function () {
			$('header').toggleClass('active');
		});
	}
}

function hideHeaderMenuMobile() {
	if ($(window).outerWidth() < 992) {
		$('body').on('click', 'header .backdrop', function () {
			$('header').removeClass('active');
		});
	}
}

function homeSliderInit() {
	return new Swiper('.home-page .swiper-container', {
		loop: true,
		navigation: {
			nextEl: '.swiper-controls .btn-next',
			prevEl: '.swiper-controls .btn-prev',
		},
		speed: 1000,
		autoplay: true
	});
}

function objectFitPolyfill() {
	// Internet Explorer 6-11
	const isIE = /*@cc_on!@*/ false || !!document.documentMode;

	// Edge 20+
	const isEdge = !isIE && !!window.StyleMedia;

	if (isIE === true || isEdge === true) {
		$('[data-object-fit-cover]').each(function (index, element) {
			let src = $(element).attr('data-src');
			if (src === undefined) {
				src = $(element).attr('src')
			}
			$(element).css('display', 'none');
			$(element).parent().css({
				'background-image': "url('" + src + "')",
				'background-repear': 'no-repeat',
				'background-size': 'cover',
				'background-position': 'center center'
			});
		});
	}
}

function progressBar() {
	var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
	var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
	var scrolled = (winScroll / height) * 100;
	$('.progress-bar').css('width', scrolled + "%");
}

function backToTop() {
	$('body').on('click', '.backtotop', function () {
		$('html, body').animate({
			scrollTop: 0
		}, 1000);
	})
}

function breadcrumbTitleMapping() {
	if ($('.breadcrumb').length) {
		var zoneTitle = $('.breadcrumb .itemcrumb.active').text();
		var html = "<h2>" + zoneTitle + "</h2>";
		$(html).insertBefore('.breadcrumb');
	}
}

function matBang01ImageMapInit() {
	if ($('.matbang-1').length) {
		$('.matbang-1 map').imageMapResize();
		$(".matbang-1 img[usemap]").maphilight({
			fill: true,
			fillColor: 'ffcb05',
			fillOpacity: .6,
			stroke: true,
			strokeColor: 'e07e27',
			strokeOpacity: 1,
			strokeWidth: 3,
			fade: true,
			alwaysOn: false,
			neverOn: false,
			groupBy: false,
			wrapClass: false,
			// plenty of shadow:
			shadow: true,
			shadowX: 0,
			shadowY: 0,
			shadowRadius: 6,
			shadowColor: '000000',
			shadowOpacity: 0.8,
			shadowPosition: 'outside',
			shadowFrom: false
		});

		$('body').on('click', '.matbang-1 area', function () {
			window.location.href = $(this).attr('data-url');
		});
	}
}

function matBang02ImageMapInit() {
	if ($('.matbang-2').length) {
		$('.matbang-2 map').imageMapResize();
		$(".matbang-2 img[usemap]").maphilight({
			fill: true,
			fillColor: 'ffcb05',
			fillOpacity: .6,
			stroke: true,
			strokeColor: 'e07e27',
			strokeOpacity: 1,
			strokeWidth: 3,
			fade: true,
			alwaysOn: false,
			neverOn: false,
			groupBy: false,
			wrapClass: false,
			// plenty of shadow:
			shadow: true,
			shadowX: 0,
			shadowY: 0,
			shadowRadius: 6,
			shadowColor: '000000',
			shadowOpacity: 0.8,
			shadowPosition: 'outside',
			shadowFrom: false
		});

		$('body').on('click', '.matbang-2 area', function () {
			window.location.href = $(this).attr('data-url');
		});
	}
}

function matBang03ImageMapInit() {
	if ($('.matbang-3').length) {
		$('.matbang-3 map').imageMapResize();
		$(".matbang-3 img[usemap]").maphilight({
			fill: true,
			fillColor: 'ffcb05',
			fillOpacity: .6,
			stroke: true,
			strokeColor: 'e07e27',
			strokeOpacity: 1,
			strokeWidth: 3,
			fade: true,
			alwaysOn: false,
			neverOn: false,
			groupBy: false,
			wrapClass: false,
			// plenty of shadow:
			shadow: true,
			shadowX: 0,
			shadowY: 0,
			shadowRadius: 6,
			shadowColor: '000000',
			shadowOpacity: 0.8,
			shadowPosition: 'outside',
			shadowFrom: false
		});

		$('body').on('click', '.matbang-3 area', function () {
			window.location.href = $(this).attr('data-url');
		});

		$(".matbang-3 map area").on('mouseenter', function () {
			$(this).css('cursor', 'wait');
			let $currentMapInfo = $('.map-list-3').find("[data-map='" + $(this).attr("data-map") + "']");
			let tooltip = generateTooltip({
				$currentMapInfo: $currentMapInfo,
				tooltipWrapperSelector: '.tooltip-wrapper',
				mapWrapperSelector: '.map-wrapper',
				autoWidth: false
			});
			positioningTooltip({
				$area: $(this),
				relativeWrapperSelector: '.imagemap-wrapper',
				tooltipWrapperSelector: '.tooltip-wrapper',
				$tooltip: tooltip,
				gutterTop: 50,
				areaType: 'polygon'
			})
			tooltip.addClass('active');
			$(this).css('cursor', 'pointer');
			$(this).attr('data-url', $currentMapInfo.children('.url').text());
		});
		$(".matbang-3 map area").on('mouseleave', function () {
			$('.tooltip').removeClass('active');
		});
	}
}

function matBang04SliderInit() {
	return new Swiper('.matbang-4 .swiper-container', {
		navigation: {
			nextEl: '.swiper-controls .btn-next',
			prevEl: '.swiper-controls .btn-prev',
		},
		speed: 1000,
		slidesPerView: 1
	});
}

function onSelectNavChange() {
	$('body').on('change', '.selectNav', function () {
		var url = $(this).val();
		if (url === undefined && url === null) {
			url = "/";
		}
		window.location.href = url;
	});
}

function popupImagesV1Init() {
	$('body').on('click', '.btn-popup-v1', function () {
		var dataFancyboxSelector = "[data-fancybox='" + $(this).attr('data-src') + "']";
		var title = $(this).attr('data-title');
		$.fancybox.open($(dataFancyboxSelector), {
			baseClass: 'popup-images-v1',
			thumbs: {
				autoStart: false
			},
			baseTpl: '<div class="fancybox-container" role="dialog" tabindex="-1">' +
				'<div class="fancybox-bg"></div>' +
				'<div class="fancybox-inner">' +
				'<div class="fancybox-infobar"><span data-fancybox-index></span>&nbsp;/&nbsp;<span data-fancybox-count></span></div>' +
				'<div class="fancybox-toolbar">{{buttons}}</div>' +
				'<div class="fancybox-navigation">{{arrows}}</div>' +
				'<div class="fancybox-stage">' +
				"<div class='popup-header'><div class='title'>" + title + "</div></div>" +
				"</div>" +
				'<div class="fancybox-caption"></div>' +
				"</div>" +
				"</div>",
		});
	})
}


function footerFormMapping() {
	var html = $('footer .contact-form .frm-btnwrap').detach();
	$(html).appendTo('.form-footer-mapping');
}

function fancyboxImages(fancyboxUrl) {
	var fancyboxSelector = '[data-fancybox="' + fancyboxUrl + '"]';
	$.fancybox.open($(fancyboxSelector), {});
}

function tienichImageMap() {
	if ($('.tienich').length) {
		$(".tienich map").imageMapResize();
		$(".tienich img[usemap]").maphilight({
			fill: false,
			fillColor: 'ffffff',
			fillOpacity: 1,
			stroke: true,
			strokeColor: 'dd8700',
			strokeOpacity: 1,
			strokeWidth: 3,
			fade: true,
			alwaysOn: false,
			neverOn: false,
			groupBy: false,
			wrapClass: false,
			// plenty of shadow:
			shadow: false,
			shadowX: 0,
			shadowY: 0,
			shadowRadius: 6,
			shadowColor: '000000',
			shadowOpacity: 0.8,
			shadowPosition: 'outside',
			shadowFrom: false
		});

		$(".tienich .item").on('click', function () {
			if ($(this).hasClass('active')) {
				$(this).removeClass('active');
				$('.tooltip').removeClass('active');
				$('.tooltip-wrapper-1').removeClass('active');
				$('.dot').removeClass('active');
			} else {
				$(this).css('cursor', 'wait');
				let $currentMapInfo = $('.map-list-1').find("[data-map='" + $(this).attr("data-map") + "']");
				let tooltip = generateTooltip({
					$currentMapInfo: $currentMapInfo,
					tooltipWrapperSelector: '.tooltip-wrapper-1',
					mapWrapperSelector: '.map-wrapper-1',
					autoWidth: false
				});
				addTooltipClasses(tooltip);
				positioningTooltip({
					$area: $('.tienich map').find("[data-map='" + $(this).attr("data-map") + "']"),
					relativeWrapperSelector: '.imagemap-wrapper-1',
					tooltipWrapperSelector: '.tooltip-wrapper-1',
					$tooltip: tooltip,
					gutterTop: 10 + tooltip.height(),
					areaType: 'circle'
				})
				tooltip.addClass('active');
				$('.tooltip-wrapper-1').addClass('active');
				$(this).css('cursor', 'pointer');
				$('.tienich .item').removeClass('active')
				$(this).addClass('active');
				$('.dot').removeClass('active');
				$(".dot[data-map='" + $(this).attr("data-map") + "']").addClass('active')
				$('html, body').animate({
					scrollTop: $('.tooltip-wrapper-1').offset().top - $('header').height() - 50
				}, 1000);
			}
		});
	}
	setTimeout(() => {
		generateDots({
			relativeWrapperSelector: '.imagemap-wrapper-1',
			coordinatesAndDataMapArray: getCoordinatesAndDataMapArray($('.tienich map area')),
			areaType: 'circle',
			mapListInfoSelector: $('.map-list-1 .map-list-info')
		});
		$(".tienich .dot").on('mouseenter', function () {
			$(this).css('cursor', 'wait');
			let $currentMapInfo = $('.map-list-1').find("[data-map='" + $(this).attr("data-map") + "']");
			let tooltip = generateTooltip({
				$currentMapInfo: $currentMapInfo,
				tooltipWrapperSelector: '.tooltip-wrapper-1',
				mapWrapperSelector: '.map-wrapper-1',
				autoWidth: false
			});
			addTooltipClasses(tooltip);
			positioningTooltip({
				$area: $('.tienich map').find("[data-map='" + $(this).attr("data-map") + "']"),
				relativeWrapperSelector: '.imagemap-wrapper-1',
				tooltipWrapperSelector: '.tooltip-wrapper-1',
				$tooltip: tooltip,
				gutterTop: 10 + tooltip.height(),
				areaType: 'circle'
			});
			$('.tooltip-wrapper-1').addClass('active');
			tooltip.addClass('active');
			$('.dot').removeClass('active');
			$(this).css('cursor', 'pointer').addClass('active');
			$('.tienich .items .item').removeClass('active');
			$('.tienich .items').find("[data-map='" + $(this).attr("data-map") + "']").addClass('active');
		});
		$(".tienich .dot").on('mouseleave', function () {
			$('.tienich .items').find("[data-map='" + $(this).attr("data-map") + "']").removeClass('active');
			$('.tooltip').removeClass('active');
			$('.dot').removeClass('active');
			$('.tooltip-wrapper-1').removeClass('active');
		});
	}, 1000);
}



function generateTooltip(params) {
	$('.tooltip-wrapper').empty();
	let dataMapAttribute = params.$currentMapInfo.attr('data-map');
	let content = params.$currentMapInfo.html();
	let tooltip = "<div " +
		"class=" + "'" + "tooltip" + "' " +
		"data-map=" + "'" + dataMapAttribute + "'" +
		">" +
		content +
		"</div>";

	$(tooltip).appendTo(params.tooltipWrapperSelector);
	if (params.autoWidth == true) {
		$('.tooltip').css({
			'minWidth': $(params.mapWrapperSelector).width() / 2 + 15,
			'width': 'fit-content'
		})
	}
	return $('.tooltip');
}

function positioningTooltip(params) {
	let positionData = {
		averageCoordinate: {},
		relativeWrapper: {
			width: $(params.relativeWrapperSelector).width(),
			height: $(params.relativeWrapperSelector).height(),
			$this: $(params.relativeWrapperSelector)
		},
		tooltipWrapper: {
			width: $(params.tooltipWrapperSelector).width(),
			height: $(params.tooltipWrapperSelector).height(),
			$this: $(params.tooltipWrapperSelector)
		},
		tooltip: {
			width: params.$tooltip.width(),
			innerWidth: params.$tooltip.innerWidth(),
			pointer: params.$tooltip.find('.pointer'),
			$this: params.$tooltip
		},
		gutterTop: params.gutterTop
	}

	let yCoordinate = 0;
	let coords = params.$area.attr('coords').split(',');
	if (params.areaType == 'polygon') {
		positionData.averageCoordinate = getAverageCoordinates(coords);
		yCoordinate = positionData.averageCoordinate.y - positionData.gutterTop;
	} else if (params.areaType == 'circle') {
		positionData.averageCoordinate = {
			x: parseInt(coords[0]),
			y: parseInt(coords[1]),
			radius: parseInt(coords[2])
		}
		yCoordinate = positionData.averageCoordinate.y - positionData.averageCoordinate.radius - positionData.gutterTop;
	}

	if (positionData.averageCoordinate.x > positionData.relativeWrapper.width / 2) {
		positionData.tooltipWrapper.$this.css({
			top: yCoordinate,
			right: 0,
			left: 'initial'
		});
		positionData.tooltip.pointer.css({
			right: positionData.relativeWrapper.width - positionData.averageCoordinate.x - positionData.averageCoordinate.radius/2,
			left: 'initial'
		});
	} else {
		positionData.tooltipWrapper.$this.css({
			top: yCoordinate,
			right: 'initial',
			left: 0
		});
		positionData.tooltip.pointer.css({
			right: 'initial',
			left: positionData.averageCoordinate.x
		});
	}
	if (positionData.averageCoordinate.x - positionData.tooltip.innerWidth / 2 > 0) {
		if (positionData.averageCoordinate.x + positionData.tooltip.innerWidth / 2 < positionData.relativeWrapper.width) {
			positionData.tooltipWrapper.$this.css({
				top: yCoordinate,
				right: 'initial',
				left: positionData.averageCoordinate.x - positionData.tooltipWrapper.width / 2
			});
			positionData.tooltip.pointer.css({
				right: 'initial',
				left: '50%'
			});
		}
	}
}

function getAverageCoordinates(coordinatesArray) {
	let averageX = 0;
	let minY = 10000000;
	for (let index = 0; index < coordinatesArray.length; index++) {
		if (index % 2 == 0) {
			averageX += parseInt(coordinatesArray[index]);
		} else {
			if (parseInt(coordinatesArray[index]) < minY) {
				minY = parseInt(coordinatesArray[index]);
			}
		}
	}
	averageX = averageX / (coordinatesArray.length / 2);

	return {
		x: averageX,
		y: minY
	}
}

function generateDots(params) {
	const $mapListInfo = params.mapListInfoSelector;
	for (let index = 0; index < params.coordinatesAndDataMapArray.length; index++) {
		const dataMap = params.coordinatesAndDataMapArray[index].dataMap;
		const coordinates = params.coordinatesAndDataMapArray[index].coords.split(',');
		let coordinate = {
			x: coordinates[0],
			y: coordinates[1],
			radius: coordinates[2]
		};
		let dot =
			"<div class='dot dot-" +
			index + "'" +
			"data-map='" + dataMap + "'" +
			"coords='" + params.coordinatesAndDataMapArray[index].coords + "'" +
			">" + $($mapListInfo[index]).attr('data-number') + "</div>"
		$(params.relativeWrapperSelector).append(dot);
		let currentDotSelector = ".dot-" + index;
		$(currentDotSelector).css({
			"position": "absolute",
			"width": coordinate.radius * 2 + "px",
			"height": coordinate.radius * 2 + "px",
			"top": (coordinate.y - coordinate.radius) + "px",
			"left": (coordinate.x - coordinate.radius) + "px",
			"z-index": 1,
			"border-radius": "50%"
		});
	}
}

function getCoordinatesAndDataMapArray($area) {
	let coordinatesAndDataMapArray = [];
	if ($area.length) {
		for (let index = 0; index < $area.length; index++) {
			const element = $area[index];
			coordinatesAndDataMapArray.push({
				coords: $(element).attr('coords'),
				dataMap: $(element).attr('data-map')
			});
		}
	}
	return coordinatesAndDataMapArray;
}

function addTooltipClasses(tooltip) {
	if (tooltip.find(".image").length === 0) {
		tooltip.addClass('without-image');
	}
	if (tooltip.find(".briefContent").length === 0) {
		tooltip.addClass('without-briefContent');
	}
	if (tooltip.find(".briefContent").length === 0 && tooltip.find(".image").length === 0) {
		tooltip.addClass('only-title');
	}
}

window.onscroll = function () {
	progressBar();
}