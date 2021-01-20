class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el;
    this.setupBoard()
  }

  bindEvents() {
    let $board = $(".board");
    $board.on("click", "li", (e) => {
      this.game.playMove();
    });
  }

  makeMove($square) {
    
  }

  setupBoard() {
    let $ul = $("<ul class='board'></ul>");
    for (let i = 0; i < 9; i++) {
      let $li = $("<li></li>");
      $ul.append($li);
    }
    this.$el.append($ul);
  }
}

module.exports = View;
