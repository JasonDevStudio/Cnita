function $(id) {
    return document.getElementById(id);
}

function scrollBanner(timer, moveNumber) {

    function move(o) {
        var st = document.documentElement.scrollTop + o.t;
        var sl = document.documentElement.scrollLeft + (o.c == 0 ? o.a : document.documentElement.clientWidth - o.a - o.offsetWidth);
        var tc = st - o.offsetTop, lc = sl - o.offsetLeft;
        with (o.style) {
            top = o.offsetTop + (tc != 0 ? tc / Math.abs(tc) : 0) * Math.min(Math.abs(tc), moveNumber) + "px";
            left = o.offsetLeft + (lc != 0 ? lc / Math.abs(lc) : 0) * Math.min(Math.abs(lc), moveNumber) + "px";
        }
        if (o.person) {
            with (o.person.style) {
                top = o.offsetTop + "px";
                left = o.offsetLeft + o.offsetWidth - o.person.offsetWidth + "px";
            }
        }
    }

    var hidden = function () {
        var o = this.parent;
        window.clearInterval(o.interval);
        o.parentNode.removeChild(o);
        this.parentNode.removeChild(this);
    }

    this.add = function (to, t, a, c, lo) {
        /* 
        to为object对象 
        t为距离顶端距离 
        当c   =   0的时候，a为距离左边的距离 
        当c   !=   0的时候，a为距离右边的距离 
        lo为关闭按钮 
        */
        var div, exec = function () {
            move(to);
        };

        to.person = lo;
        to.t = t;
        to.a = a;
        to.c = c;
        with (to.style) {
            position = "absolute";
            display = "block";
            top = document.documentElement.scrollTop + t;
            left = document.documentElement.scrollLeft + (c == 0 ? a : document.documentElement.clientWidth - a - to.offsetWidth);
        }

        if ("undefined" != typeof lo) {
            with (lo.style) {
                position = "absolute";
                display = "block";
            }
            lo.onmousedown = hidden;
            lo.parent = to;
        }
        exec();
        to.interval = window.setInterval(exec, timer);
    };
}

window.onload = function () {
    var b = new scrollBanner(10, 15);
    b.add($("lwc"), 80, 10, 0, $("lwc_c"));

    b.add($("rwc"), 80, 10, 1, $("rwc_c"));

    b = null;
}