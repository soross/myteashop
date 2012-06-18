$.fn.marquee = function (user_settings) {
    var settings = $.extend({ time: 3000, step: 66 }, user_settings);
    var self = $(this);
    var sch = self.attr('scrollHeight');
    self.append(self.html());
    var timeout = null;
    function play() { var sct = self.scrollTop(); if (sct >= sch) self.scrollTop(sct = sct - sch); self.animate({ scrollTop: sct + settings.step - sct % settings.step }, 2000, function () { if (timeout) clearTimeout(timeout); timeout = setTimeout(function () { play() }, settings.time) }) };
    function stop() { clearTimeout(timeout); self.stop() };
    self.hover(stop, play);
    play();
};

$('#new_register>ul').marquee();
