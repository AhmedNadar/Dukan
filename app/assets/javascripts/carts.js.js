(function(){$(window).load(function(){return $("#mycart .fi-x").click(function(t){var c,n;return t.preventDefault(),c=$(this).closest("a"),n=c.data("targeturl"),$.ajax({url:n,type:"put",success:function(t){return $(".cart-count").html(t),c.closest(".cart-movie").slideUp()}})})})}).call(this);