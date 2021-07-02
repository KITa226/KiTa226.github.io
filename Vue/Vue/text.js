(function ($) {
           $(".sample").fadeIn().queue(function() {
        setTimeout(function(){$("#timeout").dequeue();
        },6000);
    });
    $(".sample").fadeOut();
           });