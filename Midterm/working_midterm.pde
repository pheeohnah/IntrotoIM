//choose your own adventure game

////set up state variables
int currentpage;

//game text font setup
PFont gamefont;

//title card text
String title = "Circle and Square: A Simple Love Story";
String proceed = "[Space] to Proceed";

//restart text
String restart = "Restart?";

//exposition text
String exposition = "Circle has had a huge crush on Square for the longest time. Today, circle has decided it is time to finally confess.";


//choice 1 text
String choice1 = "The school bell rings. Circle is feeling a little nervous, and decides to consult some friends. Who should Circle talk to?";
String choice1L = "Talk to Triangle.";
String choice1R = "Talk to Rectangle.";

//choice 1 Left - triangle
String badend4 = "Triangle: Circle, you should really reconsider this. Square is so popular, and what'll you do if you get rejected? It's better to just stay quiet until you're sure.";

//choice 1 Right - rectangle
String choice1rect = "Rectangle: You should totally go for it! Don't worry so much.";

//choice 2 text
String choice2 = "With Rectangle's encouragement, Circle starts to feel better, but isn't completely convinced. What should Circle do?";
String choice2L = "Leave immediately to go confess.";
String choice2R = "Ask for more advice.";

//choice 2 Left = leave immediately
String choice2leave = "Circle thanks Rectangle and decides to leave immediately to look for Square.";

//choice 2 Right = ask for advice
String badend3 = "Circle feels insecure and asks Rectangle for more advice. Rectangle has lots of tips to share, but as the minutes tick by, Circle realizes that Square must have already left the school. Circle lost the chance to get Square alone.";

//choice 3 text
String choice3 = "Circle leaves the classroom, but Square is nowhere in sight. Where should Circle begin looking?";
String choice3L = "Go left.";
String choice3R = "Go right.";

//choice 3 left = go left
String badend2 = "Circle rushes down the hallway to the left, but ends up searching without success. Looking out the window, Circle happens to notice as Square leaves the school premises. Circle lost the chance to talk to Square.";

//choice 3 right = go right
String choice3right = "Circle rushes down the hallway to the right, and ends up catching up to Square just in time. Circle call out to Square, who stops and turns to talk.";

//choice 4 text
String choice4 = "Despite Circle's initial determination, when faced with Square all of those feelings drain away for nervousness. How should Circle approach the confession?";
String choice4L = "Hurry and just shout it out loud.";
String choice4R = "Calm down and muster up enough courage.";

//choice 4 left - shout out
String goodend = "Circle decides to just abandon all shame and shout it out.";
String goodendcircle = "Circle: Square, I've had a crush on you for such a long time, please go out with me!";
String goodendnarration = "Square gasps in surprise, but begins to blush and smile.";
String goodendsquare = "I've actually had a crush on you for a long time too. I'd be happy to go out with you!";
String happyending = "Circle and Square achieved their happy ending.";

//choice 4 right - muster courage
String badend1 = "Circle stays silent for several moments, trying to calm down and gain enough courage to confess. Right as Circle prepares to speak, the moment is interrupted by Triangle, who calls out to the pair and rushes over.";
String triangleinterrupt = "Guys, what are you still doing here? School's long over. Let's all walk home together!";

//title screen
void setup() {
  currentpage = 0;
  background (0);
  size (800, 600);
  gamefont = createFont ("Courier", 30);

  //String[] fontList = PFont.list();
  //printArray(fontList);
  textAlign (CENTER);
  textFont (gamefont);
  text (title, 400, 200);

  textSize(20);
  textAlign (CENTER);
  textFont (gamefont);
  text (proceed, 400, 250);

  circle (400, 500, 400);
}

void draw () {
}

void keyPressed() {
  if (currentpage == 0 && key == ' ') {
    expositionpage();
  }
  if (currentpage == 1 && key == ' ') {
    choice1();
  }
}

void expositionpage () {
  currentpage = 1;

  background (0);

  fill (255);
  textSize(10);
  textAlign (CENTER);
  textFont (gamefont);
  text (exposition, 50, 50, 700, 200);
}

void choice1 () {
  currentpage = 2;

  background (0);

  fill (255);
  textSize(10);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice1, 50, 50, 700, 200);
}

void choice1L () {
  currentpage = 3;

  background (0);

  fill (255);
  textSize(10);
  textAlign (CENTER);
  textFont (gamefont);
  text (badend4, 50, 50, 700, 200);
}
