void(string s) dputs =
{
    dprint(s);
    dprint("\n");
}

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
    if (cvar("developer") != 1)
        return;

    local entity	dot;

	dot = spawn();
	setmodel (dot, "progs/s_dot.spr");
	setorigin (dot, v);
	dot.movetype = MOVETYPE_NOCLIP;
	dot.solid = SOLID_NOT;
	dot.velocity = '0 0 0';
	dot.classname = "dpoint";
	dot.frame = 0;
	dot.cnt = 0;
	setsize (dot, '-8 -8 -8', '8 8 8');
    return;
};

