// From: https://editor.p5js.org/svo01/present/sagoMRxg5
// Stefan Vo - LineGame_Assignment2 converted to p5.js

var isClicked;
var gameOver;
let score = 0;
let scoreIncrement = 100;
let pointsGained = 0;
let timer = 30;

let originX = 0;
let originY = 0;

let circlePosX = 0;
let circleWidth = 50;
let circleSpeed = 1000;

var marginLower;
var marginBottom;
var marginUpper;
var marginTop;

let cTimeFade = 30 * 1;
let cFadeRate = 255 / cTimeFade;

let cAlpha = 255;
let cWidth = 0;
let canDrawRing = false;

var mousePos;

/*

INSTRUCTIONS:
-Click to drop the first end of a line, then click again somewhere else to drop the second end.
-Score by placing the second point of the line on the opposite vertical end of the screen.
-The longer the line, the better your score!  But you only have 30 seconds to score as much as you can!
-Also make sure your line doesn't touch the moving circle!

*/

function setup() {
  createCanvas(1080, 720);
  background(0);

  //sets up margins for scoring multipliers
  marginLower = 4 * (height / 6) - circleWidth / 2;
  marginBottom = 5 * (height / 6) - circleWidth / 2;
  marginUpper = 2 * (height / 6) + circleWidth / 2;
  marginTop = height / 6 + circleWidth / 2;

  //by default isClicked is false
  isClicked = false;

  //the game is not over
  gameOver = false;
}

function draw() {
  background(0);

  //shows text for score and most recent amount of points gained
  fill(255);
  textSize(32);
  noStroke();
  text("Score: " + score, 20, 20, 100, 100);
  text("Points Gained: " + pointsGained, width - 300, 20, width - 20, 100);

  //checks if the game isn't over
  if (gameOver == false) {
    //moves the circle back and forth
    MoveCircle();

    //checks if the player has clicked previously
    if (isClicked == true) {
      //draws a line
      strokeWeight(50);
      stroke(255, 51, 153);
      line(originX, originY, mouseX, mouseY);

      //checks if the circle is within a proximity of the line on the x axis
      if (abs(circlePosX - mouseX) <= circleWidth / 2) {
        //checks if the line has crossed over the screen on the y axis
        if (
          (mouseY > height / 2 + circleWidth / 2 && originY < height / 2) ||
          (mouseY < height / 2 - circleWidth / 2 && originY > height / 2)
        ) {
          //deletes the line
          isClicked = false;
        }
      }
    }

    //checks if the ring can be drawn
    if (canDrawRing == true) {
      //draws the ring using the last mouse position
      DrawClickRing(mousePos);
    }

    //updates timer
    drawTimer();
  }
}

function mouseClicked() {
  //checks if the game is over
  if (gameOver == false) {
    //checks if the ring cannot be drawn
    if (canDrawRing == false) {
      //sets up being able to draw the ring
      mousePos = createVector(mouseX, mouseY);
      canDrawRing = true;
    } else {
      //sets up being able to draw the ring
      mousePos = createVector(mouseX, mouseY);
      cAlpha = 255;
      cWidth = 0;
    }

    //checks if the player had not clicked yet
    if (isClicked == false) {
      //the player has clicked
      isClicked = true;

      //records where the player clicked
      originX = mouseX;
      originY = mouseY;
    }

    //checks if the player had previously clicked
    else {
      //the player can now click again to make a new starting point
      isClicked = false;

      //checks if the player clicked at the opposite end of the screen
      if (
        (originY < mouseY && mouseY > height / 2 && originY < height / 2) ||
        (originY > mouseY && mouseY < height / 2 && originY > height / 2)
      ) {
        //adds to score based on multiplier
        score += round(MultiplyScore(mouseY));
        //displays most recent amount of points gained
        pointsGained = round(MultiplyScore(mouseY));
      }
    }
  }
}

//moves circle back and forth
function MoveCircle() {
  //checks if the circle hits either edge of the screen
  if (circlePosX < 0 || circlePosX > width) {
    //reverses speed of the circle
    circleSpeed = -circleSpeed;
  }

  //moves the circle
  circlePosX += circleSpeed * 0.02;

  //visually formats the circle
  noStroke();
  fill(255);
  //draws the circle
  ellipse(circlePosX, height / 2, circleWidth, circleWidth);
}

//multiplies score based on position of the mouse
function MultiplyScore(pos) {
  let finalScore = 0;
  let zoneMultiplier = 1;
  //sets up multiplier based on how long the line is
  let lengthMultiplier = 1 + abs(pos - originY) / height;

  //checks if the second end of the line is in the bottom half of the screen and if the origin is towards the top
  if (pos > height / 2 && originY < height / 2) {
    //checks if the second end is above the lower margin
    if (pos <= marginLower) {
      zoneMultiplier = 1;
    }

    //checks if the second end is above the lower margin, but below the bottom-most margin
    else if (pos > marginLower && pos < marginBottom) {
      zoneMultiplier = 2;
    }

    //checks if the second end is below the bottom most margin
    else if (pos >= marginBottom) {
      zoneMultiplier = 3;
    }
  }

  //checks if the second end of the line is in the upper half of the screen and the origin is in the bottom half
  else if (pos < height / 2 && originY > height / 2) {
    //checks if the second end is below the upper margin
    if (pos > marginUpper) {
      zoneMultiplier = 1;
    }

    //checks if the second end is above the upper margin, but below the top margin
    else if (pos <= marginUpper && pos > marginTop) {
      zoneMultiplier = 2;
    }

    //checks if the second end is above the top margin
    else if (pos <= marginTop) {
      zoneMultiplier = 3;
    }
  }

  //calculates final score with multipliers
  finalScore = round(scoreIncrement * zoneMultiplier * lengthMultiplier);

  //returns multliplied score
  return finalScore;
}

//draws timer
function drawTimer() {
  var timeLeft;

  //sets up timer shape
  fill(0, 0, 255);
  noStroke();

  //checks if the game isn't over
  if (gameOver == false) {
    //updates the timer based on how much time is left
    timeLeft = 2 * PI * (float(timer - millis() / 1000) / timer);
  } else {
    timeLeft = 0;
  }

  //draws timer
  arc(width - 50, height - 50, 50, 50, 0, timeLeft, PIE);

  //checks if the timer runs out
  if (millis() / 1000 >= timer) {
    //the game is now over
    gameOver = true;
  }
}

//draws feedback ring
function DrawClickRing(pos) {
  noFill();
  stroke(255, 255);
  strokeWeight(25);

  cAlpha -= cFadeRate;
  cWidth += cFadeRate;

  //checks if the alpha is less than or equal to 0
  if (cAlpha <= 0) {
    //resets width and alpha
    cAlpha = 255;
    cWidth = 0;

    //resets condition to draw the ring
    canDrawRing = false;
  }

  //checks if the alpha is greater than 0
  else {
    //draws new circle and fades it out
    stroke(255, cAlpha);
    ellipse(pos.x, pos.y, cWidth, cWidth);
  }
}
