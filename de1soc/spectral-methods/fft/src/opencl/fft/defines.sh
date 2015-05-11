sprintf(opt,"-D FFT_%d -D FFT_2D -D fftn1=%d -D pow1=%d -D fftn2=%d -D pow2=%d -D numBlocks=%d -D log_numBlocks=%d -D batchSize=%d -D lgBatchSize=%d -D lgStrideO=%d -D SO=%d -D SI1=%d -D Radix1=%d -D Radix2=%d -D SI2=%d -D S1=%d", fftn1, fftn1, (int)log2(fftn1),fftn2, (int)log2(fftn2),numBlocks,(int)log2(numBlocks),batchSize,(int)log2(batchSize),(int)log2(S0),S0, SI, Radix1, Radix2, S, radixArr[1]*fftn1);
	arg += opt;
	if(fftn2>128)
		arg+= " -D TWIDDLE";

