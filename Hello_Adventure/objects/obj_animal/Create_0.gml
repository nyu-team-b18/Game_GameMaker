/// @Create animal object

spd = choose(1, -1, 0, 0);

if (spd == 0){ 
	dir = ""; 
	alarm[0] = choose (300, 450);
} else {
	dir = choose("hor", "ver");
	alarm[0] = choose (60, 120);
}

xspd = 0;
yspd = 0;
hmove = 0;
vmove = 0;

if (dir == "hor"){
	hmove = 1;
} else if (dir == "ver"){
	vmove = 1;
}
