export class Size {
  constructor(width = 80, height = 60) {
    this.width = width;
    this.height = height;
  }

  resize(newWidth, newHeight) {
    this.height = newHeight;
    this.width = newWidth;
  }
}

export class Position {
  constructor(x = 0, y = 0) {
    this.x = x;
    this.y = y;
  }

  move(newX, newY) {
    this.x = newX;
    this.y = newY;
  }
}

export class ProgramWindow {
  constructor() {
    this.screenSize = new Size(800, 600); // 屏幕大小
    this.size = new Size(); // 默认
    this.position = new Position(); // 默认位置
  }

  resize(windowSize) {
    let h = Math.max(
      1,
      Math.min(windowSize.height, this.screenSize.height - this.position.y),
    );
    let w = Math.max(
      1,
      Math.min(windowSize.width, this.screenSize.width - this.position.x),
    );
    this.size.resize(w, h);
  }

  move(pos) {
    let x = Math.max(
      0,
      Math.min(this.screenSize.width - this.size.width, pos.x),
    );
    let y = Math.max(
      0,
      Math.min(this.screenSize.height - this.size.height, pos.y),
    );
    this.position.move(x, y);
  }
}

export function changeWindow(programWindow) {
  programWindow.resize(new Size(400, 300));
  programWindow.move(new Position(100, 150));
  return programWindow;
}
