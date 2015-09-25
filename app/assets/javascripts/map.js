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
        this.map = Snap(1920, 1024);
        var that = this;
        this.bubbles = bubbles.map(function(bubble) {
            return new Octospork.Bubble({
                map: that.map,
                x: Math.random() * 1000,
                y: Math.random() * 700,
                radius: bubble.radius,
                thumbnail: bubble.thumbnail
            });
        });
    }

    Map.prototype.draw = function() {
        this.bubbles.forEach(function(bubble) {
            bubble.draw();
        });
    }
})();
