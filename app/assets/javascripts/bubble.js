(function () {
    if (typeof Octospork === "undefined") {
        Octospork = {};
    }

    var Bubble = Octospork.Bubble = function(args) {
        this.map    = args.map;
        this.x      = args.x;
        this.y      = args.y;
        this.radius = args.radius;
    }

    Bubble.prototype.draw = function() {
        //this.bubble = this.map.circle(this.x, this.y, this.radius);
        this.bubble = this.map.image("http://kevinvognar.com/assets/profile.jpg", this.x, this.y, this.radius, this.radius)
        var mask = this.map.circle(this.x + this.radius/2, this.y + this.radius/2, this.radius/2)
        mask.attr({
            fill: "white"
        });
        this.bubble.attr({
            mask: mask
        });
        this.bubble.addClass("bubble")
        this.bubble.drag();
    }
})();
