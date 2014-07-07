void(string s, vector v) dprintv =
{
    dprint(s);
    dprint(": ");
    dprint(vtos(v));
    dprint("\n");
}

void(string s, float f) dprintf =
{
    dprint(s);
    dprint(": ");
    dprint(ftos(f));
    dprint("\n");
    return;
}

void(vector v) dpoint =
{
    local entity	bubble;

	bubble = spawn();
	setmodel (bubble, "progs/s_bubble.spr");
	setorigin (bubble, v);
	bubble.movetype = MOVETYPE_NOCLIP;
	bubble.solid = SOLID_NOT;
	bubble.velocity = '0 0 0';
	bubble.classname = "dpoint";
	bubble.frame = 0;
	bubble.cnt = 0;
	setsize (bubble, '-8 -8 -8', '8 8 8');
    return;
};

