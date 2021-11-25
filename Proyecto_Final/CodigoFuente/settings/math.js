/// <reference path="../FullScreenMario.ts" />
var FullScreenMario;
(function (FullScreenMario) {
    "use strict";
    FullScreenMario.FullScreenMario.settings.math = {
        "equations": {
            /**
             *
             * @param thing 
             * @param other 
             * @returns 
             */
            "canPlayerTouchCastleAxe": function (constants, equations, thing, other) {
                if (!thing.FSM.isThingAlive(thing)) {
                    return false;
                }
                if (thing.right < other.left + other.EightBitter.unitsize) {
                    return false;
                }
                if (thing.bottom > other.bottom - other.EightBitter.unitsize) {
                    return false;
                }
                return true;
            },
            /**
             * 
             */
            "decreasePlayerJumpingYvel": function (constants, equations, player) {
                var jumpmod = player.FSM.MapScreener.jumpmod - player.xvel * .0014, power = Math.pow(player.keys.jumplev, jumpmod), dy = player.FSM.unitsize / power;
                player.yvel = Math.max(player.yvel - dy, constants.maxyvelinv);
            },
            /**
             * @returns {Boolean} 
             */
            "decreasePlayerRunningXvel": function (constants, equations, player) {
                if (player.keys.run !== 0 && !player.crouching) {
                    var dir = player.keys.run, 
                    sprinting = Number(player.keys.sprint && !player.FSM.MapScreener.underwater) || 0, adder = dir * (.098 * (Number(sprinting) + 1)), decel = 0, skiddingChanged = false;
                    player.xvel += adder || 0;
                    player.xvel *= .98;
                    decel = .0007;
                    if ((player.keys.run > 0) === player.moveleft) {
                        if (!player.skidding) {
                            player.skidding = true;
                            skiddingChanged = true;
                        }
                    }
                    else if (player.skidding) {
                        player.skidding = false;
                        skiddingChanged = true;
                    }
                }
                else {
                    player.xvel *= .98;
                    decel = .035;
                }
                if (player.xvel > decel) {
                    player.xvel -= decel;
                }
                else if (player.xvel < -decel) {
                    player.xvel += decel;
                }
                else if (player.xvel !== 0) {
                    player.xvel = 0;
                    if (!player.FSM.MapScreener.nokeys && player.keys.run === 0) {
                        if (player.keys.leftDown) {
                            player.keys.run = -1;
                        }
                        else if (player.keys.rightDown) {
                            player.keys.run = 1;
                        }
                    }
                }
                return skiddingChanged;
            },
            /**
             * @returns 
             */
            "springboardYvelUp": function (constants, equations, thing) {
                return Math.max(thing.FSM.unitsize * -2, thing.tensionSave * -.98);
            },
            /**
             * @returns 
             */
            "numberOfFireworks": function (constants, equations, time) {
                var numFireworks = time % 10;
                if (!(numFireworks === 1 || numFireworks === 3 || numFireworks === 6)) {
                    return 0;
                }
                return numFireworks;
            }
        }
    };
})(FullScreenMario || (FullScreenMario = {}));
