var tet="";
for(var i=0;i<Number.MAX_SAFE_INTEGER, i++)
{
	tet+=i.toString();
	history.pushState(0,0,tet);
}