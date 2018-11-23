import java.awt.Dimension;
import java.awt.Toolkit;
Toolkit toolkit = Toolkit.getDefaultToolkit();
Dimension screenSize = toolkit.getScreenSize();
int wiT=(int)(screenSize.getWidth());
int heT=(int)(screenSize.getHeight());
public void setup()
{
	size(600,600);
	frameRate(200);
}
public void draw()
{
	background(0);
	fill(255,255,255);
	rect(mouseX, mouseY, 5, 5);
	fill(255);
	textSize(50);
	text(frameCount/200, width*.2,height*.8);
	text(wiT+"   "+heT,width*.2,height*.5);
	text(retTime(),width*.1,height*.2);
}
public int timechecker()
{
	if(hour()>12)
		return hour()-12;
	return hour();
}
public String retTime()
{
	if(hour()>12)
		return year()+" "+month()+" "+day()+" "+timechecker()+"PM "+minute()+" "+second();
	return year()+" "+month()+" "+day()+" "+timechecker()+" "+minute()+" "+second();
}