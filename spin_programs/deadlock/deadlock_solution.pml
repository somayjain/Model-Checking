bit x, y;
byte mutex;

active proctype A() {
	atomic{
		y == 0;
		x = 1;
	}
	mutex++;
	mutex--;
	x = 0;
}

active proctype B() {
	atomic{
		x == 0;
		y = 1;
	}
	mutex++;
	mutex--;
	y = 0;
}

active proctype monitor() {
	assert(mutex != 2);
}