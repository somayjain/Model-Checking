int flag = 0;
active proctype P(){
	printf("In process P, flag is now %d\n", flag);
	flag == 1;
	printf("In process P, flag is now %d\n", flag);
}
active proctype Q(){
	printf("In process Q\n");
	flag = 1;	
}


