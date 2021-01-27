import React from 'react';

class Tile extends React.Component {
    constructor(props){
        super(props);
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(e) {
        const flagged = e.altKey 
        debugger
        this.props.updateGame(this.props.tile, flagged)
    }

    render() {
        const tile = this.props.tile;
        let klass, text, count;
        if (tile.explored) {
            if (tile.bombed) {
                klass = "bombed";
                text = "\u2622";
            } else {
                klass = "revealed";
                count = tile.adjacentBombCount();
                text = (count > 0 ? `${count}` : "");
            }
        } else if (tile.flagged) {
            klass = "flagged";
            text = "\u2691";
        } else {
            klass = "unrevealed";
            text = ""
        }
        klass = `tile ${klass}`

        return (
            <div className={klass} onClick={this.handleClick} >
                {text}
            </div>
        )
    }
}

export default Tile;