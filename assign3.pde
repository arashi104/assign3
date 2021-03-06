//You should implement your assign3 here.

final int GAME_START = 1;
final int GAME_RUN = 2;
final int GAME_LOSE = 3;

//picture
PImage fighterImg ;
PImage bg1Img ;
PImage bg2Img ;
PImage bg3Img;
PImage start1IMG;
PImage start2IMG;
PImage end1Img;
PImage end2Img;
PImage hpImg ;
PImage enemyImg1 ;
PImage enemyImg2 ;
PImage enemyImg3 ;
PImage enemyImg4 ;
PImage enemyImg5 ;
PImage treasureImg ;
int enemyX,enemyY;
int backgroundX,backgroundY,backgroundZ;
int hpX,hpY,blood;
int speedX,speedY;
int fighterX,fighterY;
int x = floor(random(20,620)); //treasure x
int y = floor(random(20,200)); //treasure y
int gameStare;
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;

void setup () {
  size(640,480) ;  // must use this size.

  //start
  bg1Img=loadImage("img/bg1.png");
  bg2Img=loadImage("img/bg2.png");
  bg3Img=loadImage("img/bg1.png");
  end1Img=loadImage("img/end2.png");
  end2Img=loadImage("img/end1.png");
  start1IMG=loadImage("img/start1.png");
  start2IMG=loadImage("img/start2.png");
  hpImg=loadImage("img/hp.png");
  enemyImg1=loadImage("img/enemy.png");
  enemyImg2=loadImage("img/enemy.png");
  enemyImg3=loadImage("img/enemy.png");
  enemyImg4=loadImage("img/enemy.png");
  enemyImg5=loadImage("img/enemy.png");
  treasureImg=loadImage("img/treasure.png");
  fighterImg=loadImage("img/fighter.png");
  
  speedX = floor(random(2,8));
  speedY = floor(random(-2,2));
  backgroundX = 0;
  fighterX = 610;
  fighterY = 220;
  enemyX = 20;
  enemyY = floor(random(40,440));
  hpX = 20;
  hpY = 20;
  blood = 69;
  gameStare = GAME_START;
}


void draw() {
  //begin
  switch(gameStare){
    case GAME_START:
  image(start2IMG,0,0);
   if(mouseX>=200&&mouseX<=440&&mouseY>=380&&mouseY<=420){
   image(start1IMG,0,0);
   if(mousePressed){
   gameStare=GAME_RUN;
   }
  }
  break;
  case GAME_RUN:
  image(bg1Img,backgroundX,0);
  image(bg2Img,backgroundY,0);
  image(bg3Img,backgroundZ,0);
  fill(220,0,0);
  rectMode(CORNERS);
  rect(30,20,blood,40);
  image(hpImg,hpX,hpY);
  image(enemyImg1,enemyX,enemyY);
  image(enemyImg2,enemyX+65,enemyY);
  image(enemyImg3,enemyX+130,enemyY);
  image(enemyImg4,enemyX-65,enemyY);
  image(enemyImg5,enemyX-130,enemyY);
  image(treasureImg,x,y);
  image(fighterImg,fighterX-20,fighterY-20);
  if(x+40>=fighterX&&fighterX+40>=x){
    if(y+40>=fighterY&&fighterY+40>=y){
    x=floor(random(20,620));
    y=floor(random(20,200));
    }
  }
       if(enemyX+40>=fighterX&&fighterX+40>=enemyX){
       if(enemyY+40>=fighterY&&fighterY+40>=enemyY){
       speedX=floor(random(2,8));
       speedY=floor(random(-2,2));
       enemyX=20;
       enemyY=floor(random(40,440));
       }
    }
    if(enemyX>680||enemyX<-40||enemyY<-40||enemyY>480){
      
      speedX=floor(random(2,8));
      speedY=floor(random(-2,2));
       enemyX=20;
       enemyY=floor(random(40,440));
    }
  enemyX+=speedX;
  enemyY+=speedY;
  backgroundX++;
  backgroundY=backgroundX-640;
  backgroundZ=backgroundY-640;
  backgroundX=backgroundX%1280;
  if(enemyY>=fighterY&&enemyX>=120){
    speedY=-2;
  }
  if(enemyY<=fighterY&&enemyX>=120){
    speedY=2;
  }
 if(upPressed){
   fighterY=fighterY-3;
 }
 
 if(downPressed){
   fighterY=fighterY+3;
 }
 
 if(rightPressed){
   fighterX=fighterX+3;
 }
 
 if(leftPressed){
   fighterX=fighterX-3;
 }
 if(fighterX>=610){
   fighterX=610;
 }
 if(fighterX<=20){
   fighterX=20;
 }
 if(fighterY<=20){
   fighterY=20;
 }
 if(fighterY>=450){
   fighterY=450;
 }
  }
   }
 
