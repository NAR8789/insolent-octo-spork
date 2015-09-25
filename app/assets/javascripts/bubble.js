(function () {
    if (typeof Octospork === "undefined") {
        Octospork = {};
    }

    var Bubble = Octospork.Bubble = function(args) {
        this.map    = args.map;
        this.x      = args.x;
        this.y      = args.y;
        this.radius = args.radius;
        this.thumbnail = args.thumbnail;
    };

    Bubble.prototype.draw = function() {
        var pattern = this.map.image(this.thumbnail, 0, 0, 1, 1).pattern(0, 0, 1, 1);
        pattern.attr('patternUnits', 'objectBoundingBox');

        //var image = this.map.image("http://kevinvognar.com/assets/profile.jpg", this.x, this.y, this.radius, this.radius);
        var image = this.image = this.map.circle(this.x, this.y, this.radius).attr('fill', pattern);
        var resizeButton = this.map.circle(this.x, this.y, 10);
        resizeButton.transform('t' + this.radius + ',0');
        var group = this.group = this.map.group(
            image, resizeButton
        );

        group.addClass("bubble-group")
        resizeButton.addClass("resize-button")
        image.addClass("bubble")
        group.drag();

        var origTransform;
        resizeButton.drag(function (dx, dy) {
            group.undrag();
            console.log("AUGH");
            this.attr({
                transform: origTransform + (origTransform ? "T" : "t") + [dx, dy]
            });
            var m = this.transform().localMatrix;
            var r = Math.sqrt(m.e * m.e + m.f * m.f);
            if(r > 20) {
                image.attr('r', r);
            }
        },
        function() {
            origTransform = this.transform().local;
        },
        function() {
            group.drag();
        });

    }


})();
