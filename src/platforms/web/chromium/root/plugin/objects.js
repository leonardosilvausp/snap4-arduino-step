SpriteMorph.prototype.reportAnalogReading = function (pin) {
    if (this.arduino.isBoardReady()) {
        var board = this.arduino.board;

        if (!pin) { return 0 };

        if (board.pins[board.analogPins[pin]].mode != board.MODES.ANALOG) {
            board.pinMode(board.analogPins[pin], board.MODES.ANALOG);
        }
        board.getAnalogPinValue(board.analogPins[pin]);
        return board.pins[board.analogPins[pin]].value;

    } else {
        return 0;
    }
};

SpriteMorph.prototype.reportDigitalReading = function (pin) {
    if (this.arduino.isBoardReady() && pin) {
        var board = this.arduino.board;
        if (board.pins[pin].mode != board.MODES.INPUT) {
            board.pinMode(pin, board.MODES.INPUT);
            board.pins[pin].watcherReport = 1;
        } else {
            if (board.pins[pin].watcherReport == 1) {
                board.reportDigitalPin(pin, 1);
                board.pins[pin].watcherReport = 0;
            } else {
                board.getDigitalPinValue(pin);
                return board.pins[pin].value == 1;
            }
        }
    }
    return false;
};
