(function () {
    if (typeof Octospork === "undefined") {
        Octospork = {};
    }

    Octospork.testBubbles = [{
        x: 50,
        y: 50,
        radius: 100
    }];

    var Map = Octospork.Map = function(bubbles) {
        this.map = Snap(800, 600);
        var that = this;
        this.bubbles = bubbles.map(function(bubble) {
            return new Octospork.Bubble({
                map: that.map,
                x: bubble.x,
                y: bubble.y,
                radius: bubble.radius
            });
        });
    }

    Map.prototype.draw = function() {
        this.bubbles.forEach(function(bubble) {
            bubble.draw();
        });
    }
})();
