# RminCutter Docker

This is a dockerized version of the RminCutter script found here: https://github.com/RILAB/rmin_cut

Its based on perl:5.38.2-slim and the entrypoint is a Bash session.

Here follows the original readme:



## RminCutter 

A perl script to estimate Hudson & Kaplan's rmin from a standard fasta file, then cut the file into regions with no 4-gamete violation. Note that a lack of 4-gamete violation does **NOT** mean there was no recombination! An example fasta file seqfile.txt is included.

Allows choice of 3 definitions of intervals for output.

Run the program with "perl rmincutter.pl -i filename" (accepts  wildcard).  

Input file must be fasta-formated with all the sequence on one line.  Output is printed to filename_1.out, filename_2.out, etc.


### Optional command line parameters:

	-v : for verbose output
	
	-q : suppress top header line on output files

	-s : suppress warning to STDERR

	-f : add '.fasta' to the end of output files for easier manipulation by other programs

	-m : for smaller set of recombination intervals
		This option forces reduction of recombination intervals to the smallest range of 
		sequence which can explain the observed data. It does NOT give regions in 
		which recombination DID occur.

	-g : skip sites with gaps

	-p : uses a 'greedy' algorithm which uses all SNPs
		As a result, each region is likely to still encompass a recombination
		event and thus violate the assumptions of many models.
	
	-n : skip sites with missing data

	-t : skip sites with >2 bases segregating data

	-c : changelog since version 1.0

### References

Hudson, R. and N. Kaplan. 1985. Genetics 111:147-164 
