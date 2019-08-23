<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="canonical" href="https://www.daangn.com/" />
<title>홍당무마켓 - 우리 동네 중고거래</title>
<link rel="author" href="홍당무마켓" />
<link href="/images/icons/shortcut_icon.png" rel="shortcut icon"
	type="image/x-icon">
<link rel="shortcut icon" type="image/x-icon"
	href="https://d1unjqcospf8gs.cloudfront.net/favicon.ico" />
<link rel="stylesheet" media="all"
	href="https://d1unjqcospf8gs.cloudfront.net/assets/home/base-5fd449a9ae8befbdeef7776030bd747ddb94c65231eec5a3144ba6d36c4cc815.css" />
<script
	src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base-4bad12c052c58f77c6e9f82182b7886ec85f0a617534048f6c793626f7031c4a.js"></script>
<link rel="apple-touch-icon" sizes="192x192"
	href="/images/icons/daangn_logo_192.png">

<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function addNew(subject) {
		var new_li = $("<li>");

		var subject_p = $("<p>");
		subject_p.addClass("keyword-text");
		subject_p.html(subject);

		new_li.append(subject_p);
		$("#top-keywords-list").append(new_li);
	}

	function addList(subject, image0, area, price, reply_count, interest_count,
			num) {
		//alert("image0"+image0);
		//alert("reply_count"+reply_count);
		//alert("area "+ area);
		var image0 = "http://localhost:8098/hongdangmu/storage/" + image0;
		var img = "img" + num;
		//alert("img " + image0 + num);
		var newArticle = $("<article>");
		newArticle.addClass("card-top");

		var new_Div1 = $("<div>");
		new_Div1.addClass("card-photo");

		var new_DivI = $("<div>");
		
		new_DivI.html('<a href="http://192.168.0.61:8098/hongdangmu/goods/selectOne.jsp"><img src="'+image0+'" alt="이미지"></a>');
		
		//alert("test3");
		//alert("test99");
		
		var new_Div2 = $("<div>");
		new_Div2.addClass("card-desc");
		var new_h2 = $("<h2>");
		new_h2.addClass("card-title");
		new_h2.html(subject);
		var new_Div3 = $("<div>");
		new_Div3.addClass("card-region-name");
		new_Div3.html(area);
		var new_Div4 = $("<div>");
		new_Div4.addClass("card-price");
		new_Div4.html(price);
		var new_Div5 = $("<div>");
		new_Div5.addClass("card-counts");
		var new_Span1 = $("<span>");
		new_Span1.html("관심 " + interest_count + " ");
		var new_Span2 = $("<span>");
		new_Span2.html("댓글 " + reply_count);

		/* new_Img.append(image0);
		new_Div1.append(new_Img);*/
		new_Div5.append(new_Span1).append(new_Span2);
		new_Div2.append(new_h2).append(new_Div3).append(new_Div4).append(
				new_Div5);
		new_Div1.append(new_DivI);
		newArticle.append(new_Div1).append(new_Div2);
		//newArticle.append(new_Div2).append(new_h2).append(new_Div3).append(new_Div4).append(new_Div5);

		$(".cards-wrap").append(newArticle);
		//$(".cards-wrap").append(new_Div2);
	}
	$(function() {
		alert("test1");
		$.ajax({
			//url:"goods/boardList.do",
			url : "http://localhost:8098/hongdangmu/goods/boardList.do",
			//url:"http://localhost:8099/hongdangmu/goods/boardList.do",
			//contentType: 'application/json; charset=utf-8',
			type : "post",
			data : {
				"pg" : "1"
			},
			dataType : 'json',
			success : function(json) {
				// 배열까지 접근한다.
				//var items = json.items;				
				alert(json.rt + "");
				$.each(json.item, function(index, i) {
					var num = index;
					var subject = i.subject;
					var image0 = i.image0;
					var area = i.area;
					var price = i.price;
					var reply_count = i.reply_count;
					var interest_count = i.interest_count;
					if (index < 7) {
						addNew(num, subject);
						addList(subject, image0, area, price, reply_count,
								interest_count, num);
					} else {
						addList(subject, image0, area, price, reply_count,
								interest_count, num);
					}

				});
			},
			error : function(xhr, str) {
				alert("test3 " + xhr.status + ', ' + str);
			}
		});
	});
</script>
</head>
<body>
	<header id="fixed-bar">
		<div id="fixed-bar-wrap">
			<h1 id="fixed-bar-logo-title">
				<a href="/hongdangmu/main.jsp"> <span class="sr-only">홍당무마켓</span>
					<img class="fixed-logo" alt="홍당무마켓"
					src="img/KakaoTalk_20190809_155307864.png" />
				</a>
			</h1>

			<section id="fixed-bar-search">
				<div class="search-input-wrap">
					<span class="sr-only">검색</span> <input type="text"
						name="header-search-input" id="header-search-input"
						class="fixed-search-input" placeholder="지역, 상품, 업체등을 검색해보세요." />
					<button id="header-search-button">
						<a href="http://192.168.0.61:8098/hongdangmu/goods/boardList.do"> <img class="fixed-search-icon" alt="Search"
							src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/search-icon-db20a2e9e6b0fc922b44982d451cf1c967c86e8e8df270e71c300832a6f31f1a.svg" />
						</a>
					</button>
				</div>
			</section>

			<section id="fixed-bar-download">
				<h3 class="hide">다운로드</h3>
				<!-- <a target="_blank" class="fixed-download-button" id="header-download-button-ios" href="https://itunes.apple.com/kr/app/pangyojangteo/id1018769995?l=ko&amp;ls=1&amp;mt=8"> -->
				<a target="_blank" class="fixed-download-button"
					id="header-download-button-ios"> <img class="fixed-apple-store"
					alt="App Store"
					src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/apple-store-790f526e762ae58ec39274857ea3434959b7bd40fc23ec1f33a21983f3d024ff.svg" />
					<div class="fixed-download-text">App Store</div>
				</a>
				<!-- <a target="_blank" class="fixed-download-button" id="header-download-button-android" href="https://play.google.com/store/apps/details?id=com.towneers.www"> -->
				<a target="_blank" class="fixed-download-button"
					id="header-download-button-android"> <img
					class="fixed-google-play" alt="Google Play"
					src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/google-play-3c1802269ac6bedde598de4f2885286c18492748e5b58bd358254b26ee61e008.svg" />
					<div class="fixed-download-text">Google Play</div>
				</a>
			</section>
		</div>
	</header>


	<section id="header-top">
		<div id="header-title-wrap">
			<h1 id="header-title">우리 동네 중고 직거래 마켓</h1>
			<p id="header-title-desc">동네 주민들과 가깝고 따뜻한 거래를 지금 경험해보세요.</p>
			<div id="header-image"></div>
			<section id="top-keywords">
				<h3 id="top-keywords-title">
					<a id="top-keywords-link" href="/top_keywords"> <span
						id="top-keywords-title-text">오늘의 인기 검색어</span> <img
						class="right-arrow" alt="오늘의 인기 검색어"
						src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/icon-right-arrow-24a4ae5554b39aa379d82d49324861cf1be86129f3e540e302771ae84b89400b.svg" />
					</a>
				</h3>
				<ul id="top-keywords-list">

				</ul>
			</section>
		</div>
	</section>

	<section id="hot-articles">
		<h3>홍당무마켓 인기 매물</h3>
		<div class="title-line-divider"></div>
		<section class="cards-wrap"></section>

		<section id="introduction">
			<h3>홍당무마켓은 이런 점이 달라요!</h3>
			<div class="title-line-divider"></div>
			<div id="introduction-wrap">
				<section class="introduction-detail">
					<div class="home-checkin"></div>
					<h5 class="introduction-title">동네 인증</h5>
					<p class="introduction-desc">
						설정한 동네를 인증한<br /> 주민만 거래할 수 있어요.
					</p>
				</section>
				<section class="introduction-detail">
					<div class="home-temperature"></div>
					<h5 class="introduction-title">거래 매너 온도</h5>
					<p class="introduction-desc">
						거래하기 전, 프로필에 있는<br /> 매너 온도를 확인해보세요.
					</p>
				</section>
				<section class="introduction-detail">
					<div class="home-chatting"></div>
					<h5 class="introduction-title">1:1 채팅하기</h5>
					<p class="introduction-desc">
						거래할 상대방과 부담 없이<br /> 대화할 수 있어요.
					</p>
				</section>
				<section class="introduction-detail">
					<div class="home-notification"></div>
					<h5 class="introduction-title">가격 하락 알림</h5>
					<p class="introduction-desc">
						관심 게시물의 가격이 떨어지면<br /> 가격 하락 알림을 받을 수 있어요.
					</p>
				</section>
				<section class="introduction-detail">
					<div class="home-share"></div>
					<h5 class="introduction-title">나눔의 날</h5>
					<p class="introduction-desc">
						매월 11일, 안쓰는 물건을 나누고<br /> 이웃과 추억도 공유해보세요.
					</p>
				</section>
				<section class="introduction-detail">
					<div class="home-thanks"></div>
					<h5 class="introduction-title">감사 인사</h5>
					<p class="introduction-desc">
						거래 후에는 서로에게<br /> 감사 인사를 보내보세요.
					</p>
				</section>
			</div>
		</section>

		<section id="reviews">
			<h3>홍당무마켓 사용자 후기</h3>
			<div class="title-line-divider"></div>
			<ul id="reviews-list">
				<li class="review">
					<div class="home-icon-quotation"></div>
					<div class="reviews-text">
						근처에 있는 사람들끼리 거래하니까 뭔가 더 믿을 수 있는 것 같아요. 동네에서 바로 직거래할 수 있는 물건만 볼 수
						있어 좋은 것 같아요. <span class="review-region-name"> - 서울 잠실3동</span>
					</div>
				</li>
				<li class="review">
					<div class="home-icon-quotation"></div>
					<div class="reviews-text">
						여기는 모랄까 돈 버는 것이 목적이 아닌 이웃들과 안 쓰는 물건들을 공유하고 정을 주고받는 동네 장터 같아요. 거래할
						때마다 이웃의 정을 느낄 수 있어 좋았답니다. <span class="review-region-name">
							- 울산 삼산동</span>
					</div>
				</li>
				<li class="review">
					<div class="home-icon-quotation"></div>
					<div class="reviews-text">
						믿을 수 있고, 무엇보다 직거래할 수 있어서 편하네요! 좋은 물건들이 거래되다 보니 중독성도 은근 강함 ㅋㅋ 놓칠까 봐
						자꾸 들여다보게 되네요. <span class="review-region-name"> - 광명 철산3동</span>
					</div>
				</li>
				<li class="review">
					<div class="home-icon-quotation"></div>
					<div class="reviews-text">
						동네에서 바로 직거래하니까 사기 걱정도 없고 좋네요 ^^ 동네 사람들이니까 신뢰도 가고 가끔 쿨매 나오면 좋아요 ~~
						<span class="review-region-name"> - 분당 정자동</span>
					</div>
				</li>
				<li class="review">
					<div class="home-icon-quotation"></div>
					<div class="reviews-text">
						집에 있는 안 쓰는 물건 팔기 좋아요 :) 동네 사람들이랑 직거래할 수 있어서 소소한 물건 팔기 좋아요! <span
							class="review-region-name"> - 인천 주안1동</span>
					</div>
				</li>
				<li class="review">
					<div class="home-icon-quotation"></div>
					<div class="reviews-text">
						요즘 미니멀라이프 실천 중인데 당근마켓만한 앱이 없어요! 미니멀리즘을 위한 앱이랄까요?ㅎㅎ 동네 직거래라 쉽고 간편해서
						너무 좋아요^^ 중고거래에 빠져있답니다❤︎ <span class="review-region-name"> -
							부산 부전제1동</span>
					</div>
				</li>
				<li class="review">
					<div class="home-icon-quotation"></div>
					<div class="reviews-text">
						아나바다 운동하는 것 같아서 좋아요ㅎ 저한텐 필요 없는 물건이 필요한 사람에게 전달될 수 있는 공간을 열어주셔서
						감사합니다! <span class="review-region-name"> - 광주 관천동</span>
					</div>
				</li>
				<li class="review">
					<div class="home-icon-quotation"></div>
					<div class="reviews-text">
						당근에서 거래하는 재미에 쏙 빠졌어요~ 안쓰는 물건 나눔하고 피드백 받는 경험도 너무 좋았어요~ 동네라서 정말 편해요.
						넘나 애정하는 어플 응원할게요! <span class="review-region-name"> - 대전
							둔산2동</span>
					</div>
				</li>
				<li class="review">
					<div class="home-icon-quotation"></div>
					<div class="reviews-text">
						요즘 매일 쓰는 벼룩 앱이에요:) 근처 주민이라 믿을만하고 쉽게 거래할 수 있어요~ 동네에서 올라오는 매물 구경하는
						맛에 완전 중독됐어요!! 진짜 안써본 사람은 몰라요 ㅋㅋ <span class="review-region-name">
							- 제주 노형동</span>
					</div>
				</li>
			</ul>
		</section>

		<footer id="footer">
			<ul class="footer-list">
				<li class="footer-list-item"><a target="_blank" href="#">이용약관</a></li>
				<li class="footer-list-item"><a target="_blank" href="#">개인정보
						취급방침</a></li>
				<li class="footer-list-item"><a target="_blank" href=href="#">위치기반서비스
						이용약관</a></li>
				<li class="footer-list-item text-bold"><a target="_blank"
					href="#">광고주센터</a></li>
				<li class="footer-list-item"><a target="_blank" href="#">ABOUT
						US</a></li>
			</ul>
			<ul class="footer-list" id="footer-address-list">
				<li class="footer-list-item">사업자 등록번호 : 000-00-00000</li>
				<li class="footer-list-item"><address>서울특별시 서초구
						서초대로77길 55 에이프로스퀘어 3층</address></li>
			</ul>
			<p id="ceo">(주)홍당무마켓 대표 김세훈</p>
			<div id="copyright">Copyright © hongdangmu Market Inc. All
				rights reserved.</div>
			<div id="social">
				<ul class="footer-list">
					<li class="footer-list-item"><a target="_blank"
						class="footer-facebook" href="#">facebook</a></li>
					<li class="footer-list-item"><a target="_blank"
						class="footer-instagram" href="#">instagram</a></li>
				</ul>
			</div>
		</footer>
</body>
</html>