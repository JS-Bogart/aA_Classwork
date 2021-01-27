import React from 'react';
import Tile from './tile';

class Board extends React.Component {
  constructor(props) {
    super(props);
    // debugger
    this.boardArr = props.board.grid.map((row, i) => {
      return(
        <div className="row" key={i}>
            {row.map((tile, j) => {
                // debugger
              return (
                <Tile 
                  tile={tile} 
                  updateGame={props.updateGame}
                  key={`${i}${j}`}
                />
              )
            })}
        </div>
      )
    })
  }

  render() {
    return(
      <div className="board">
        {this.boardArr}
      </div>
    )
  }

}

export default Board;