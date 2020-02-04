public void setup()
{
	size(500,500);
	
}
public void draw()
{
	frameRate(10);
	sierpinski(0,500,500);
	rotate(PI);
	sierpinski(-500,0,500);
	rotate(-PI);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{		
	if(len<=30){
		//fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		triangle(x,y,x+(len/2),y-len,x+len,y);
	}
	else{
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		sierpinski(x,y,len/2);
		
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		sierpinski(x+len/2,y,len/2);
		
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		sierpinski(x+len/4,y-len/2,len/2);
		
	}	
	

}