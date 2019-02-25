app = {
    main: {
        init: function() {
            $(".form-input").focus(function() {
                $(this).closest(".form-group").addClass("focused")
            })
            $(".form-input").blur(function() {
                if (!$(this).val())
                    $(this).closest(".form-group").removeClass("focused")
            })

            $(".slick").slick({
                slidesToShow: 1,
                variableWidth: true,
                infinite: false,
                dots: false,
                arrows: false,
            })

            $(".flip-card").each(function() {
                ff = $(this).find(".flip-card-front")
                fb = $(this).find(".flip-card-back")
                h = Math.max(ff.height(), fb.height())
                ff.height(h);
                fb.height(h);
                $(this).height(h + 10);
            })

            $(".flip-card .buttonbar a").click(function(e) {
                questionId = $(this).data("question-id");
                isCorrect = $(this).data("correct");
                feedbackClass = isCorrect == true ? "success" : "error";
                $(".feedback-" + questionId).addClass(feedbackClass);
                $(".show-" + feedbackClass + "-" + questionId).show();

                e.preventDefault();
				$(".slick-slider .slick-list").css("overflow","visible")
				$(this).closest(".flip-card").addClass("flipped");
				setTimeout(() => {
					$(".slick-slider .slick-list").css("overflow","hidden")
				}, 600);
				$(".buttonbar .next").fadeIn();
            })

			$(".buttonbar .next").click(function(e){
				$(".slick").slick('slickNext');
				$(".buttonbar .next").fadeOut();
			})

        }
    }
}

$(app.main.init)
