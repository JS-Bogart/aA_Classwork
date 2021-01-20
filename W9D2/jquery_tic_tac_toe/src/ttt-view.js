class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el;
    this.setupBoard()
  }

  bindEvents() {
    let $board = $(".board");
    $board.on("click", "li", (e) => {
      // debugger
      this.game.playMove($(e.target).data('pos'));
      this.makeMove($(e.target))
    });
  }

  makeMove($square) {
    $square.toggleClass('placeMove')

    // const $board = $(".board");
    // $board.on('click','li', (e) => {
    //   $(e.target).toggleClass('placeMove');
    // })
    
  }

  setupBoard() {
    const positions = { '0': [0,0], '1':[0,1], '2':[0,2], '3':[1,0], '4':[1,1],
    '5':[1,2], '6':[2,0], '7':[2,1], '8':[2,2] };
    let $ul = $("<ul class='board'></ul>");
    for (let i = 0; i < 9; i++) {
      let $li = $(`<li></li>`);
      $li.data('pos', positions[`${i}`])
      $ul.append($li);
    }
    this.$el.append($ul);
  }
}

module.exports = View;
