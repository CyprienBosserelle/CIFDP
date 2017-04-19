BEGIN{
	printf("SWAN 1\n")
	printf("TIME\n\t1\n")
	printf("LONLAT\n")
	printf("\t1\n")
	printf("%f\t%f\n",lon,lat)
	printf("AFREQ\n")
	printf("111\n")
	for (i=0; i<111; i++)
		printf("%f\n",i*0.0025+0.04)
	printf("NDIR\n")
	printf("360\n")
	for (i=0; i<360; i++)
		printf("%f\n",i)
	printf("QUANT\n");
	printf("\t1\n");
	printf("VaDens\n");
	printf("m2/Hz/degr\n");
	printf("\t-0.9900E+02\n");
	printf("%s\n",t)
	printf("FACTOR\n")
	printf("%E\n",0.000005)
	
}
{
	EE[NR]=$1;
}
END{
	for (fi=0; fi<111; fi++){
		for (di=0; di<360; di++){
			printf("%d\t",EE[fi+di*111]/0.000005)
		}
		printf("\n")
	}
	
}
	
