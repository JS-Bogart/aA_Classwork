import React from 'react';
import Tile from './tile';

class Board extends React.Component {
  constructor(props) {
    super(props);
    this.boardArr = this.props.board.map((row, i) => {
      return(
        row.map((tile, j) => {
          return (
            <Tile 
              tile={tile} 
              updateGame={this.props.updateGame}
            />
          )
        })
      )
    })
  }

  render() {
    return(
      <div>
        {this.boardArr}
      </div>
    )
  }

}