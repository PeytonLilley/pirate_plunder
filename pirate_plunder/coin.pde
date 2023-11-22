// make a new class for coins

class coin {

float coinX;
float coinY;
float coinWidth = 15;
float coinHeight = 30;
float coinSideWidth = 20;

// constructor for coins

coin(float myCoinX, float myCoinY, float myCoinWidth, float myCoinHeight, float myCoinSideWidth) {
  coinX = myCoinX;
  coinY = myCoinY;
  coinWidth = myCoinWidth;
  coinHeight = myCoinHeight;
  coinSideWidth = myCoinSideWidth;
}

// display coins

void displayCoin() {
  ellipseMode(CORNER);
  fill(227, 209, 73);
  ellipse(coinX, coinY, coinSideWidth, coinHeight);
  fill(255, 229, 26);
  ellipse(coinX, coinY, coinWidth, coinHeight);
}

void moveCoinX() {
 coinX = coinX + 30; 
}

void moveCoinY() {
  coinY = coinY + 40;
}
}
