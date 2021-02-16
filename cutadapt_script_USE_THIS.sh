for i in *_R1_001.fastq.gz
do
	SAMPLE=$(echo ${i} | sed "s/_R1_\001\.fastq\.gz//")
	echo${SAMPLE}_R1_001.fastq.gz
	cutadapt -a AGATCGGAAGAGC -o /Volumes/Tequila/Wael/RNAseq2019/raw_data/trimmed/trim_${SAMPLE}_R1_001.fastq ${SAMPLE}_R1_001.fastq.gz
done
