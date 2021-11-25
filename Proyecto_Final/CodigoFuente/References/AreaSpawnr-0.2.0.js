/// <reference path="MapsCreatr-0.2.1.ts" />
/// <reference path="MapScreenr-0.2.1.ts" />
/// <reference path="ObjectMakr-0.2.2.ts" />
var AreaSpawnr;
(function (AreaSpawnr_1) {
    "use strict";
    var AreaSpawnr = (function () {
        /**
         * @param {IAreaSpawnrSettings} settings
         */
        function AreaSpawnr(settings) {
            if (!settings) {
                throw new Error("No settings given to AreaSpawnr.");
            }
            if (!settings.MapsCreator) {
                throw new Error("No MapsCreator provided to AreaSpawnr.");
            }
            this.MapsCreator = settings.MapsCreator;
            if (!settings.MapScreener) {
                throw new Error("No MapScreener provided to AreaSpawnr.");
            }
            this.MapScreener = settings.MapScreener;
            this.onSpawn = settings.onSpawn;
            this.onUnspawn = settings.onUnspawn;
            this.screenAttributes = settings.screenAttributes || [];
            this.stretchAdd = settings.stretchAdd;
            this.afterAdd = settings.afterAdd;
            this.commandScope = settings.commandScope;
        }
        /* 
        */
        /**
         * @returns 
         */
        AreaSpawnr.prototype.getMapsCreator = function () {
            return this.MapsCreator;
        };
        /**
         * @returns 
         */
        AreaSpawnr.prototype.getMapScreener = function () {
            return this.MapScreener;
        };
        /**
         * @returns 
         */
        AreaSpawnr.prototype.getScreenAttributes = function () {
            return this.screenAttributes;
        };
        /**
         * @returns
         */
        AreaSpawnr.prototype.getMapName = function () {
            return this.mapName;
        };
        /**
         *
         * @param name 
         * @returns 
         */
        AreaSpawnr.prototype.getMap = function (name) {
            if (typeof name !== "undefined") {
                return this.MapsCreator.getMap(name);
            }
            else {
                return this.mapCurrent;
            }
        };
        /**
         *
         * @returns 
         */
        AreaSpawnr.prototype.getMaps = function () {
            return this.MapsCreator.getMaps();
        };
        /**
         * @returns 
         */
        AreaSpawnr.prototype.getArea = function () {
            return this.areaCurrent;
        };
        /**
         * @returns 
         */
        AreaSpawnr.prototype.getAreaName = function () {
            return this.areaCurrent.name;
        };
        /**
         * @param location   
         * @returns 
         */
        AreaSpawnr.prototype.getLocation = function (location) {
            return this.areaCurrent.map.locations[location];
        };
        /**
         * @returns 
         */
        AreaSpawnr.prototype.getLocationEntered = function () {
            return this.locationEntered;
        };
        /**
         *
         * @returns 
         */
        AreaSpawnr.prototype.getPreThings = function () {
            return this.prethings;
        };
        /* Map & area setting
        */
        /**
         *
         * @param name 
         * @param location   
         * @returns 
         */
        AreaSpawnr.prototype.setMap = function (name, location) {
            this.mapCurrent = this.getMap(name);
            if (!this.mapCurrent) {
                throw new Error("Unknown Map in setMap: '" + name + "'.");
            }
            this.mapName = name;
            if (arguments.length > 1) {
                this.setLocation(location);
            }
            return this.mapCurrent;
        };
        /**
         *
         * @param name
         */
        AreaSpawnr.prototype.setLocation = function (name) {
            var location, attribute, i;
            location = this.mapCurrent.locations[name];
            if (!location) {
                throw new Error("Unknown location in setLocation: '" + name + "'.");
            }
            this.locationEntered = location;
            this.areaCurrent = location.area;
            this.areaCurrent.boundaries = {
                "top": 0,
                "right": 0,
                "bottom": 0,
                "left": 0
            };
            for (i = 0; i < this.screenAttributes.length; i += 1) {
                attribute = this.screenAttributes[i];
                this.MapScreener[attribute] = this.areaCurrent[attribute];
            }
            this.prethings = this.MapsCreator.getPreThings(location.area);
            if (this.areaCurrent.stretches) {
                this.setStretches(this.areaCurrent.stretches);
            }
            if (this.areaCurrent.afters) {
                this.setAfters(this.areaCurrent.afters);
            }
        };
        /**
         *
         * @param stretchesRaw
         */
        AreaSpawnr.prototype.setStretches = function (stretchesRaw) {
            var i;
            this.stretches = stretchesRaw;
            for (i = 0; i < stretchesRaw.length; i += 1) {
                this.stretchAdd.call(this.commandScope || this, stretchesRaw[i], i, stretchesRaw);
            }
        };
        /**
         *
         * @param aftersRaw 
         */
        AreaSpawnr.prototype.setAfters = function (aftersRaw) {
            var i;
            this.afters = aftersRaw;
            for (i = 0; i < aftersRaw.length; i += 1) {
                this.afterAdd.call(this.commandScope || this, aftersRaw[i], i, aftersRaw);
            }
        };
        /**
         *
         * @param direction   The direction by which to order PreThings, as "xInc",
         *                    "xDec", "yInc", or "yDec".
         * @param top   The upper-most bound to spawn within.
         * @param right   The right-most bound to spawn within.
         * @param bottom    The bottom-most bound to spawn within.
         * @param left    The left-most bound to spawn within.
         */
        AreaSpawnr.prototype.spawnArea = function (direction, top, right, bottom, left) {
            if (this.onSpawn) {
                this.applySpawnAction(this.onSpawn, true, direction, top, right, bottom, left);
            }
        };
        /**
         * Calls onUnspawn on every PreThing touched by the given bounding box,
         * determined in order of the given direction. This is a simple wrapper
         * around applySpawnAction that also gives it false as the status.
         *
         * @param direction   The direction by which to order PreThings, as "xInc",
         *                    "xDec", "yInc", or "yDec".
         * @param top   The upper-most bound to spawn within.
         * @param right   The right-most bound to spawn within.
         * @param bottom    The bottom-most bound to spawn within.
         * @param left    The left-most bound to spawn within.
         */
        AreaSpawnr.prototype.unspawnArea = function (direction, top, right, bottom, left) {
            if (this.onUnspawn) {
                this.applySpawnAction(this.onUnspawn, false, direction, top, right, bottom, left);
            }
        };
        /**
         *
         * @param callback   The callback to be run whenever a matching matching
         *                   PreThing is found.
         * @param status   The spawn status to match PreThings against. Only PreThings
         *                 with .spawned === status will have the callback applied.
         * @param direction   The direction by which to order PreThings, as "xInc",
         *                    "xDec", "yInc", or "yDec".
         * @param top   The upper-most bound to apply within.
         * @param right   The right-most bound to apply within.
         * @param bottom    The bottom-most bound to apply within.
         * @param left    The left-most bound to apply within.
         */
        AreaSpawnr.prototype.applySpawnAction = function (callback, status, direction, top, right, bottom, left) {
            var name, group, prething, mid, start, end, i;
            // For each group of PreThings currently able to spawn...
            for (name in this.prethings) {
                if (!this.prethings.hasOwnProperty(name)) {
                    continue;
                }
                // Don't bother trying to spawn the group if it has no members
                group = this.prethings[name][direction];
                if (group.length === 0) {
                    continue;
                }
                // Find the start and end points within the PreThings Array
                // Ex. if direction="xInc", go from .left >= left to .left <= right
                mid = (group.length / 2) | 0;
                start = this.findPreThingsSpawnStart(direction, group, mid, top, right, bottom, left);
                end = this.findPreThingsSpawnEnd(direction, group, mid, top, right, bottom, left);
                // Loop through all the directionally valid PreThings, spawning if 
                // they're within the bounding box
                for (i = start; i <= end; i += 1) {
                    prething = group[i];
                    // For example: if status is true (spawned), don't spawn again
                    if (prething.spawned !== status) {
                        prething.spawned = status;
                        callback(prething);
                    }
                }
            }
        };
        /**
         * Finds the index from which PreThings should stop having an action
         * applied to them in applySpawnAction. This is less efficient than the
         * unused version below, but is more reliable for slightly unsorted groups.
         *
         * @param direction   The direction by which to order PreThings, as "xInc",
         *                    "xDec", "yInc", or "yDec".
         * @param group   The group to find a PreThing index within.
         * @param mid   The middle of the group. This is currently unused.
         * @param top   The upper-most bound to apply within.
         * @param right   The right-most bound to apply within.
         * @param bottom    The bottom-most bound to apply within.
         * @param left    The left-most bound to apply within.
         * @returns The index to start spawning PreThings from.
         */
        AreaSpawnr.prototype.findPreThingsSpawnStart = function (direction, group, mid, top, right, bottom, left) {
            var directionKey = AreaSpawnr.directionKeys[direction], directionEnd = this.getDirectionEnd(directionKey, top, right, bottom, left), i;
            for (i = 0; i < group.length; i += 1) {
                if (group[i][directionKey] >= directionEnd) {
                    return i;
                }
            }
            return i;
        };
        /**
         *
         * @param direction   The direction by which to order PreThings, as "xInc",
         *                    "xDec", "yInc", or "yDec".
         * @param group   The group to find a PreThing index within.
         * @param mid   The middle of the group. This is currently unused.
         * @param top   The upper-most bound to apply within.
         * @param right   The right-most bound to apply within.
         * @param bottom    The bottom-most bound to apply within.
         * @param left    The left-most bound to apply within.
         * @returns The index to stop spawning PreThings from.
         */
        AreaSpawnr.prototype.findPreThingsSpawnEnd = function (direction, group, mid, top, right, bottom, left) {
            var directionKey = AreaSpawnr.directionKeys[direction], directionKeyOpposite = AreaSpawnr.directionKeys[AreaSpawnr.directionOpposites[direction]], directionEnd = this.getDirectionEnd(directionKeyOpposite, top, right, bottom, left), i;
            for (i = group.length - 1; i >= 0; i -= 1) {
                if (group[i][directionKey] <= directionEnd) {
                    return i;
                }
            }
            return i;
        };
        /**
         * Conditionally returns a measurement based on what direction String is
         * given. This is useful for generically finding boundaries when the
         * direction isn't known, such as in findPreThingsSpawnStart and -End.
         *
         * @param direction   The direction by which to order PreThings, as "xInc",
         *                    "xDec", "yInc", or "yDec".
         * @param top   The upper-most bound to apply within.
         * @param right   The right-most bound to apply within.
         * @param bottom    The bottom-most bound to apply within.
         * @param left    The left-most bound to apply within.
         * @returns Either top, right, bottom, or left, depending on direction.
         */
        AreaSpawnr.prototype.getDirectionEnd = function (directionKey, top, right, bottom, left) {
            switch (directionKey) {
                case "top":
                    return top;
                case "right":
                    return right;
                case "bottom":
                    return bottom;
                case "left":
                    return left;
                default:
                    throw new Error("Unknown directionKey: " + directionKey);
            }
        };
        /**
         * Directional equivalents for converting from directions to keys.
         */
        AreaSpawnr.directionKeys = {
            "xInc": "left",
            "xDec": "right",
            "yInc": "top",
            "yDec": "bottom"
        };
        /**
         * Opposite directions for when finding descending order Arrays.
         */
        AreaSpawnr.directionOpposites = {
            "xInc": "xDec",
            "xDec": "xInc",
            "yInc": "yDec",
            "yDec": "yInc"
        };
        return AreaSpawnr;
    })();
    AreaSpawnr_1.AreaSpawnr = AreaSpawnr;
})(AreaSpawnr || (AreaSpawnr = {}));
