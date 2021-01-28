import React from 'react';
import * as Minesweeper from './minesweeper';
import Board from './board';

class Game extends React.Component {
    constructor(props) {
        super(props);
        const board = new Minesweeper.Board(10, 5);
        this.state = {
            board: board
        }
        this.updateGame = this.updateGame.bind(this);
    }

    updateGame(tile, flagged){
        // debugger
        if (flagged) {
            // console.log()
            tile.toggleFlag();
        } else {
            // console.log(tile.explored)
            tile.explore();
            // console.log(tile.explored)
        }
        // console.log(flagged)
        this.setState({ board: this.state.board });
    }

    restartGame(){
        const board = new Minesweeper.Board(10, 5);
        this.setState({board: board});
    }

    render(){
        if (this.state.board.lost() || this.state.board.won()) {
            const text = this.state.board.won() ? "You won!" : "You lost...";
        }
        return(
            <div>
                <h1>Minesweeper</h1>
                <Board board = {this.state.board} updateGame = {this.updateGame}/>
                <div className="modal-screen">
                    <div className="modal-content">
                        <p>{text}</p>
                        <button onClick={this.restartGame}>Play again!</button>
                    </div>
                </div>
            </div>
        )
    }
}

export default Game;