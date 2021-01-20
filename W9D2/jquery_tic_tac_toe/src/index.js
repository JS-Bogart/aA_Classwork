const View = require('./ttt-view');
const Game = require('../solution/game');

  $(() => {
    // Your code here
    let game = new Game();
    new View(game, $(".ttt"));
    
  });
