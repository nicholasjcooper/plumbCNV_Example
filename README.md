# plumbCNV_Example
This is an example dataset to test plumbCNV.
Run the file 'run_example.R', if everything is installed and up to date it should run through successfully. Feel free to send me bug reports if somethings fails if you have the latest version of R, bioconductor and you have installed the latest versions of my packages: NCmisc, reader, bigpca, and humarray [tar.gz files for development versions of each package can be found in this repository].


Here is the output when I run it on my system:


#########################################

>source("~/github/plumbCNV/personal/run_example.R")


Loading required package: NCmisc
Loading required package: bigmemory
Loading required package: bigmemory.sri
Loading required package: BH

bigmemory >= 4.0 is a major revision since 3.1.2; please see packages
biganalytics and and bigtabulate and http://www.bigmemory.org for more information.

Loading required package: biganalytics
Loading required package: BiocGenerics
Loading required package: parallel

Attaching package: ‘BiocGenerics’

The following objects are masked from ‘package:parallel’:

    clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
    clusterExport, clusterMap, parApply, parCapply, parLapply,
    parLapplyLB, parRapply, parSapply, parSapplyLB

The following object is masked from ‘package:stats’:

    xtabs

The following objects are masked from ‘package:base’:

    anyDuplicated, append, as.data.frame, as.vector, cbind, colnames,
    do.call, duplicated, eval, evalq, Filter, Find, get, intersect,
    is.unsorted, lapply, Map, mapply, match, mget, order, paste, pmax,
    pmax.int, pmin, pmin.int, Position, rank, rbind, Reduce, rep.int,
    rownames, sapply, setdiff, sort, table, tapply, union, unique,
    unlist

Loading required package: IRanges
Loading required package: GenomicRanges
Loading required package: GenomeInfoDb
humarray version 1.0.0

Loading required package: snpStats
Loading required package: survival
Loading required package: Matrix

Attaching package: ‘Matrix’

The following object is masked from ‘package:IRanges’:

    expand


Attaching package: ‘annotSnpStats’

The following object is masked from ‘package:snpStats’:

    ld

Loading required package: BiocInstaller
Bioconductor version 2.14 (BiocInstaller 1.14.3), ?biocLite for help
A newer version of Bioconductor is available for this version of R,
  ?BiocUpgrade for help
Loading required package: lattice
Loading required package: compiler
 silently loading bioconductor packages: IRanges, BiocGenerics, Biobase, GenomicRanges, genoset ... done
NB: pipeline scheduled to pause after SNP-QC 
trying URL 'http://r-forge.r-project.org/scm/viewvc.php/*checkout*/scripts/getDataGS.sh?revision=9&root=plumbcnv'
Content type 'text/x-sh;charset=UTF-8' length unknown
opened URL
.......... .......... ......
downloaded 26 KB

 copied file getDataGS.sh 
into: /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/SCRIPTS/ 
from Rforge/plumbcnv/ 
sh: 0: getcwd() failed: No such file or directory
 copied file file.spec.txt 
into: /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/LRRDATA 
from: /chiswick/data/ncooper/plumbCNV_Example/preRunAnnotFiles 
[1] 3
[1] 3
 copied file plate.lookup.txt 
into: /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/ANNOTATION 
from: /chiswick/data/ncooper/plumbCNV_Example/preRunAnnotFiles 
[1] 101
[1] 101
 copied file pheno.lookup.txt 
into: /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/ANNOTATION 
from: /chiswick/data/ncooper/plumbCNV_Example/preRunAnnotFiles 
[1] 101
[1] 101
 copied file sex.lookup.txt 
into: /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/ANNOTATION 
from: /chiswick/data/ncooper/plumbCNV_Example/preRunAnnotFiles 
[1] 101
[1] 101
 copied file snpdata.map 
into: /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/ANNOTATION 
from: /chiswick/data/ncooper/plumbCNV_Example/preRunAnnotFiles 
[1] 15338
[1] 15338
 copied file snpNames.txt 
into: /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/ANNOTATION 
from: /chiswick/data/ncooper/plumbCNV_Example/preRunAnnotFiles 
[1] 15338
[1] 15338
 copied file subIdsALL.txt 
into: /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/LRRDATA/SAMPLEFILES 
from: /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/ANNOTATION 
[1] 100
[1] 100
 silently loading bioconductor packages: IRanges, BiocGenerics, Biobase, GenomicRanges, genoset, snpStats, irlba ... done


Plink installation detected

Found hidden markov parameter file hh550.hmm.
Modify parameters therein; B1_uf, B2_uf, B3_uf, from 0.01 to 0.03,if using Affymetrix arrays

PennCNV installation detected

Validating required files for plumbCNV assuming:
 *     Mode 1: run the pipeline starting from a raw genome studio file, using file.spec.txt 
 * Snp mode 1: run SNP-QC using snpStats package [NB: must have genotype data] 

Found 'file.spec.txt', so will attempt to use information from this file to adjust import settings
plumbCNV file check successful

######################
# 0. DATA EXTRACTION #
######################

Running bash data import script
/chiswick/data/ncooper/plumbCNV_Example/pipesDisease/SCRIPTS/getDataGS.sh -lSMG -N 22 -T 'LRR' -F '/chiswick/data/ncooper/plumbCNV_Example/genomeStudioRawFiles/' -O '/chiswick/data/ncooper/plumbCNV_Example/pipesDisease/' -m '/chiswick/data/ncooper/plumbCNV_Example/genomeStudioRawFiles/lab1dataset.txt.tar.gz' 


Options in use are:
-------------------
MaxSnp: 2000000
Datatype: LRR
Max number of cores: 22
Filename with Chr,Pos,Snp support information: /chiswick/data/ncooper/plumbCNV_Example/genomeStudioRawFiles/lab1dataset.txt.tar.gz
Generate Plink .Map file using support filename above?: yes
SNP location support file is in genome studio format?: yes
Location of main CNV directory (output then to /...DATA/RAWDATA/): /chiswick/data/ncooper/plumbCNV_Example/pipesDisease 
Directory containing raw data files: /chiswick/data/ncooper/plumbCNV_Example/genomeStudioRawFiles
Get SNP/Sample IDs?: yes
Make Plink LGEN file?: no
Make fake Plink family file?: no
Write file lengths to file?: yes
Combine all into 1 file?: no
If combining, delete separate files?: no
Skip main extraction?: no
Remove non-autosomes prior to sample QC in Plink?: no
Do QC in Plink?: no

Plink settings seem ok
Extracting LRR data from genome studio file
2 datafiles expected
extracting snp list...
extracting ID list...
ls: cannot access $outdir/ANNOTATION/*.ids: No such file or directory
0
found sample ids in file subIdsALL.txt
found 100 subject IDs
found 15338 snp IDs
Assuming genome studio format, which means a file header, then a line containing the text [Data]
followed by row of headers, then the actual long format data
extracting LRR from column 13 of /chiswick/data/ncooper/plumbCNV_Example/genomeStudioRawFiles/lab1dataset.txt.tar.gz
extracting LRR from column 13 of /chiswick/data/ncooper/plumbCNV_Example/genomeStudioRawFiles/lab2dataset.txt.tar.gz
getting lengths of vector format data files, writing to file.lengths.txt
complete
Extracting SNP info from genome studio type file:  /chiswick/data/ncooper/plumbCNV_Example/genomeStudioRawFiles/lab1dataset.txt.tar.gz
applying any custom column settings -abcd if they exist
parsing gzip file.
[assuming sample-id in 1, chr in col 3, pos in col 4, snp-label in col 2]
if any of these column numbers are wrong please modify mSampCol, mchrCol, mposCol, mSnpCol in this script
extracting from zip file (*.gz)
snpdata.map file created successfully, preview:
chr snp-id pos
1	chr1_171422483	171422483
11	chr11_76048775	76048775
11	chr11_76048907	76048907
11	chr11_76049066	76049066
11	chr11_76049353	76049353

Running bash data import script for BAF data
/chiswick/data/ncooper/plumbCNV_Example/pipesDisease/SCRIPTS/getDataGS.sh -N 22 -T 'BAF' -F '/chiswick/data/ncooper/plumbCNV_Example/genomeStudioRawFiles/' -O '/chiswick/data/ncooper/plumbCNV_Example/pipesDisease/' 


Options in use are:
-------------------
MaxSnp: 2000000
Datatype: BAF
Max number of cores: 22
Filename with Chr,Pos,Snp support information: ./support.txt
Generate Plink .Map file using support filename above?: no
SNP location support file is in genome studio format?: no
Location of main CNV directory (output then to /...DATA/RAWDATA/): /chiswick/data/ncooper/plumbCNV_Example/pipesDisease 
Directory containing raw data files: /chiswick/data/ncooper/plumbCNV_Example/genomeStudioRawFiles
Get SNP/Sample IDs?: no
Make Plink LGEN file?: no
Make fake Plink family file?: no
Write file lengths to file?: no
Combine all into 1 file?: no
If combining, delete separate files?: no
Skip main extraction?: no
Remove non-autosomes prior to sample QC in Plink?: no
Do QC in Plink?: no

Plink settings seem ok
In BAF mode plink options are reset to 'no'
In BAF mode usually assumes LRR has already been extracted and so snp and sample lists are present already
Extracting BAF data from genome studio file
2 datafiles expected
Assuming genome studio format, which means a file header, then a line containing the text [Data]
followed by row of headers, then the actual long format data
extracting BAF from column 12 of /chiswick/data/ncooper/plumbCNV_Example/genomeStudioRawFiles/lab1dataset.txt.tar.gz
extracting BAF from column 12 of /chiswick/data/ncooper/plumbCNV_Example/genomeStudioRawFiles/lab2dataset.txt.tar.gz
complete
imports using bash scripts, complete!
 changed specified 'grps' in data.tracker to match file.spec.txt

Retrieving Plate/Well information from lookup table:
 taking id, plate from columns: id, plate 
 file preview:
  V1             V2        V3
1  1 chr1_171422483 171422483
2 11 chr11_76048775  76048775
3 11 chr11_76048907  76048907
4 11 chr11_76049066  76049066

 Warning: no matches to reference list found in sort file, assuming invalid
 no valid files found in sort annotation directory - creating new from 'ref.list'
~wrote file: /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/ANNOTATION/SNP_SORT/snpsort.txt 
~wrote excluded non-autosome snp list to: /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/ANNOTATION/SNP_EXCLUDE/ 
 searching for raw datafiles in processed long format (e.g, converted from GenomeStudio)
 all 2 expected data files found in /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/LRRDATA/RAWDATA/ 
 searching for raw datafiles in processed long format (e.g, converted from GenomeStudio)
 all 2 expected data files found in /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/BAFDATA/RAWDATA/ 

##################
# 1. DATA IMPORT #
##################

 no pre-existing BAF big.matrix, or 'delete=T', importing now from text file
 getting all ID lists ignoring group [1 groups]
 reading snps from /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/ANNOTATION/snpNames.txt 
 found 100 samples and 15338 markers
 reading a single cohort from 2 source files.
 found 100 column names and 15338 marker names

Creating big matrix object to store group data
 predicted disk use:  0 GB
 opening connection to long format datafile (1/2): lab1dataset.txt.tar.gz.BAF.dat

Loading text data into big matrix object:
0         25%         50%         75%         100%
..................................................
 opening connection to long format datafile (2/2): lab2dataset.txt.tar.gz.BAF.dat

Loading text data into big matrix object:
0         25%         50%         75%         100%
..................................................

 created big.matrix description file: BAF.dsc 
 created big.matrix backing file: BAF.bck 

Running import for 1 cohort(s)
 getting ID list(s) for group 1 
 reading snps from /chiswick/data/ncooper/plumbCNV_Example/pipesDisease/ANNOTATION/snpNames.txt 
 found 100 samples and 15338 markers
 reading a single cohort from 2 source files.
 found 100 column names and 15338 marker names

Creating big matrix object to store group data
 predicted disk use:  0 GB
 opening connection to long format datafile (1/2): lab1dataset.txt.tar.gz.LRR.dat

Loading text data into big matrix object:
0         25%         50%         75%         100%
..................................................
 opening connection to long format datafile (2/2): lab2dataset.txt.tar.gz.LRR.dat

Loading text data into big matrix object:
0         25%         50%         75%         100%
..................................................

 created big.matrix description file: LRR.dsc 
 created big.matrix backing file: LRR.bck 

##########################
# 2. SNP QUALITY CONTROL #
##########################

 file preview:
  V1             V2        V3
1  1 chr1_171422483 171422483
2 11 chr11_76048775  76048775
3 11 chr11_76048907  76048907
4 11 chr11_76049066  76049066

~wrote excluded non-autosome snp list to: /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SNP_EXCLUDE/ 

Importing SNP data into R using snpStats package
 reading file lengths of raw datafiles from file.lengths.txt 

Time estimates for importing SNP data:
     ~ mins to process Raw file name                 
[1,] 0.1               lab1dataset.txt.tar.gz.LRR.dat
[2,] 0.1               lab2dataset.txt.tar.gz.LRR.dat
[3,] 0.2               All files                     
fnz (character, 2) [head]:
[1] "/chiswick/data/ncooper/vTest/genomeStudioRawFiles/lab1dataset.txt.tar.gz"
[2] "/chiswick/data/ncooper/vTest/genomeStudioRawFiles/lab2dataset.txt.tar.gz"

Files contain: 60,40 samples, respectively

reading 2 long format SNP files using 2 cores in parallel...
593871 genotypes successfully read
19649 genotypes were not called
891359 genotypes successfully read
28921 genotypes were not called
~wrote snpMatLst to: /chiswick/data/ncooper/vTest/pipesDisease/SNPQC/snpMatLst.RData 
reordering/selecting markers from SnpMatrices 1 to 2 ...done

Generating report (sample)
           CallRate Samples Percent
1    callrate < 0.5       0      0%
2   callrate < 0.75       0      0%
3    callrate < 0.9       0      0%
4   callrate < 0.95       0      0%
5  callrate >= 0.95     100    100%
6  callrate >= 0.97      42     42%
7  callrate >= 0.99       0      0%
8 callrate >= 0.999       0      0%

~wrote file with samples call rate QC summary to:
  /chiswick/data/ncooper/vTest/pipesDisease/SNPQC/sampleqc.txt 
~wrote file with samples to exclude because of low call rate:
  /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SAMPLE_EXCLUDE/callrate.txt 
~wrote file with samples to exclude because of heterozygosity outside (0.1,0.4):
 /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SAMPLE_EXCLUDE/hz.txt
 reordering/selecting samples from SnpMatrix files 1 to 2 ...done
~wrote 3239 suspected monomorphic snps to:
  /chiswick/data/ncooper/vTest/pipesDisease/SNPQC/monomorphic.txt 

Generating report (snp)
           CallRate  SNPs Percent
1    callrate < 0.5   341   2.27%
2   callrate < 0.75   421    2.8%
3    callrate < 0.9   563   3.75%
4   callrate < 0.95   678   4.51%
5  callrate >= 0.95 14352  95.49%
6  callrate >= 0.97 14237  94.72%
7  callrate >= 0.99 13986  93.05%
8 callrate >= 0.999 13459  89.55%

~wrote file with snp call rate and HWE QC summary to:
  /chiswick/data/ncooper/vTest/pipesDisease/SNPQC/snpqc.txt 
~wrote file with call rate failing snps to:
  /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SNP_EXCLUDE/callrate.txt 
~wrote HWE exclusion list to annotion directory
 deleting: /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SNP_SORT/snpsort.txt 
replacing any files in directory /ANNOTATION/SNP_SORT/ with new sorted snp list
~wrote file: /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SNP_SORT/snpsort.txt 
Loading required package: limma
 generating venn diagrams
~wrote Venn figure to file: /chiswick/data/ncooper/vTest/pipesDisease/SNPQC/venn_95.pdf 
 generating density plots
~wrote density figure to file: /chiswick/data/ncooper/vTest/pipesDisease/SNPQC/callRateDistributions.pdf 
HWE data for 0 monomorphic SNPs was ignored
wrote file: /chiswick/data/ncooper/vTest/pipesDisease/SNPQC/HWEDistribution.pdf 
wrote file /chiswick/data/ncooper/vTest/pipesDisease/SNPQC/HZDistribution.pdf 
wrote file: /chiswick/data/ncooper/vTest/pipesDisease/SNPQC/HWEvsCallrate.pdf 
==> full info object written to: /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/sampleinfo.tab 
==> full info object written to: /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/snpinfo.RData 
~wrote sampleinfo.tab, snpinfo.tab to:
  /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/ 
SNP-QC removed a total of 0 samples and 686 SNPs

#############################
# 3. SAMPLE QUALITY CONTROL #
#############################

 initializing sample-QC exclusion files
 100/100 samples successfully assigned groups

Running sample QC for 1 cohort(s)

Processing data import and sample QC for cohort 1 of 1 

Loading big matrix from descriptor file /chiswick/data/ncooper/vTest/pipesDisease/BIGMATRICES/LRR.RData :

Excluding samples/snps with SNP-QC failures, sorting SNPs by chr, pos:
 attached matrix with dims: 15338,100 
 excluding and ordering listed samples based on annotation directory files; SNP/SAMP
 calculating exclusions and order
 100 % of big.matrix indices in sort.list
 using /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SAMPLE_SORT/subIdsALL.txt to sort samples 
 98 % of big.matrix indices in sort.list
 using /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SNP_SORT/snpsort.txt to sort snps 
 starting deep copy...done
Big matrix with: 14344 rows, 100 columns
 - data type: numeric 

                    colnames 
 Row#      rownames   ID0001   ID0002  .....    ID0100 
    1 imm_1_7722552  -0.3457  -0.3033   ...    -0.3835 
    2 imm_1_7722929  -0.0482  -0.0999   ...    -0.0683 
    3 imm_1_7723190  -0.0129  -0.0722   ...    -0.0861 
   ..          ....      ...      ...   ...        ... 
14344     rs8139123  -0.2366  -0.4045   ...     -0.216 


Calculating sample-wise statistics for LRR
 calculating column means...took 0 seconds
 calculating column SDs...took 0 seconds
 calculating column DLRS (apply method) ...took 1 seconds

Adding GC wave to LRR stats, be aware this can be slow

Extracting GC% for each 1e+06 window of the human genome...took 0.1 minutes
 100% match between snp.info annotation and big.matrix file
 doing median calculation
0         25%         50%         75%         100%
..................................................
 took 0 hours
 calculating Diskin constants...
~wrote boxplot:
  /chiswick/data/ncooper/vTest/pipesDisease/SAMPLEQC/MEAN_DLRS_GC/LRRDistributionsBoxPlot.pdf 
~wrote table
 /chiswick/data/ncooper/vTest/pipesDisease/SAMPLEQC/MEAN_DLRS_GC/LRRStatsPerSample.tab 


Cohort distribution statistics for LRR-stats:
            Mean     DLRS    GCWave
   Mean  -0.0131   0.1662   -0.0416
     SD   0.0138   0.0229     0.017
    Min  -0.0824   0.1331   -0.0768
     Q1   -0.018    0.152   -0.0496
 Median  -0.0114   0.1609   -0.0421
     Q3  -0.0067   0.1771    -0.033
    Max   0.0099    0.279    0.0576
     LB  -0.0351   0.1143   -0.0745
     UB   0.0103   0.2148   -0.0081
   -2SD  -0.0407   0.1203   -0.0755
   +2SD   0.0144   0.2121   -0.0076
 -3.5SD  -0.0613   0.0859    -0.101
 +3.5SD   0.0351   0.2465    0.0179
  Low1%  -0.0824   0.1331   -0.0768
   Hi1%   0.0079   0.2478    0.0174

~appended 3 to sample list: /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SAMPLE_EXCLUDE/Mean.txt 
~appended 3 to sample list: /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SAMPLE_EXCLUDE/DLRS.txt 
~appended 1 to sample list: /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SAMPLE_EXCLUDE/GCWave.txt 
~wrote file: /chiswick/data/ncooper/vTest/pipesDisease/SAMPLEQC/MEAN_DLRS_GC/LRRMean+DLRS+GCWave.pdf 

Plotting extreme samples for combinations of: Mean vs GC vs DLRS
0         25%         50%         75%         100%
..................................................
~wrote 3 files:
/chiswick/data/ncooper/vTest/pipesDisease/SAMPLEQC/EXAMPLES;
  Mean+DLRSSampleID0012LRR.pdf
  Mean+DLRS+GCWaveSampleID0008LRR.pdf
  NoneSampleID0070LRR.pdf

~wrote file(s):
  LRRDLRSvsMean.pdf 
  LRRGCWavevsMean.pdf 
  LRRGCWavevsDLRS.pdf 


Detecting chromosomal abberations
 processing chr: 1..2..3..4..5..6..7..8..9..10..11..12..13..14..15..16..17..18..19..20..21..22..done

Table of Exclusion processing per chromosome...
chr: 1 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 2 too high: 0 too low: 1 excluded top/bottom 1 %: 2 
chr: 3 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 4 too high: 0 too low: 1 excluded top/bottom 1 %: 2 
chr: 5 too high: 0 too low: 1 excluded top/bottom 1 %: 2 
chr: 6 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 7 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 8 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 9 too high: 0 too low: 1 excluded top/bottom 1 %: 2 
chr: 10 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 11 too high: 1 too low: 0 excluded top/bottom 1 %: 2 
chr: 12 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 13 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 14 too high: 2 too low: 0 excluded top/bottom 1 %: 2 
chr: 15 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 16 too high: 1 too low: 0 excluded top/bottom 1 %: 2 
chr: 17 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 18 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 19 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 20 too high: 1 too low: 0 excluded top/bottom 1 %: 2 
chr: 21 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
chr: 22 too high: 0 too low: 0 excluded top/bottom 1 %: 2 
 no chromosomal abberations were detected

Performing plate QC
callrate.txt 0/0 in this cohort
DLRS.txt 3/3 in this cohort
GCWave.txt 1/1 in this cohort
Mean.txt 3/3 in this cohort

Table of Plate failure counts:
        ID CallRate Mean DLRS ChrAb GCWave TOTAL SIZE PC+CR
1  PLT0001        0    3    3     0      1     3   12  0.25
2  PLT0002        0    0    0     0      0     0    1  0.00
3  PLT0003        0    0    0     0      0     0   12  0.00
4  PLT0004        0    0    0     0      0     0   12  0.00
5  PLT0005        0    0    0     0      0     0   12  0.00
6  PLT0006        0    0    0     0      0     0   12  0.00
7  PLT0007        0    0    0     0      0     0   12  0.00
8  PLT0008        0    0    0     0      0     0   12  0.00
9  PLT0009        0    0    0     0      0     0   12  0.00
10 PLT0010        0    0    0     0      0     0    3  0.00
written to /chiswick/data/ncooper/vTest/pipesDisease/SAMPLEQC/PLATES/CountsPerPlateLRR.tab 

Testing for plates where more than 40% of samples fail QC (including callrate) 
~appended bad plate excluded subject list:
  /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SAMPLE_EXCLUDE/BadPlates.txt 
~table of LRR-statistics by Plate, written to:
 /chiswick/data/ncooper/vTest/pipesDisease/SAMPLEQC/PLATES/StatsPerPlateLRR.tab
~wrote file: /chiswick/data/ncooper/vTest/pipesDisease/SAMPLEQC/PLATES/plateBoxPlotsMDGLRR.pdf 

Excluding samples/snps with SNP-QC failures, sorting SNPs by chr, pos:
 attached matrix with dims: 14344,100 
 excluding and ordering listed samples based on annotation directory files; SNP/SAMP
 calculating exclusions and order
 100 % of big.matrix indices in sort.list
 using /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SAMPLE_SORT/subIdsALL.txt to sort samples 
 100 % of big.matrix indices in sort.list
 using /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/SNP_SORT/snpsort.txt to sort snps 
 0 samples to remove (across all groups), found in BadPlates.txt 
 0 samples to remove (across all groups), found in callrate.txt 
 3 samples to remove (across all groups), found in DLRS.txt 
 0 samples to remove (across all groups), found in GCWave.txt 
 0 samples to remove (across all groups), found in hz.txt 
 0 samples to remove (across all groups), found in Mean.txt 
 678 Snps to remove, found in callrate.txt 
 8 Snps to remove, found in HWE.txt 
 308 Snps to remove, found in nonAutosomes.txt 

Reordering SNPs and Samples...

INDEXES SUMMARY
14344 row indexes range is from 1 to 14344 
-->, 1, 2, 3, 4, 5, 6
97 col indexes range is from 1 to 100 
-->, 1, 2, 3, 4, 5, 7

 raw big.matrix summary before ordering and exclusion based on SNP-QC:

Big matrix with: 14344 rows, 100 columns
 - data type: numeric 

                    colnames 
 Row#      rownames   ID0001   ID0002  .....    ID0100 
    1 imm_1_7722552  -0.3457  -0.3033   ...    -0.3835 
    2 imm_1_7722929  -0.0482  -0.0999   ...    -0.0683 
    3 imm_1_7723190  -0.0129  -0.0722   ...    -0.0861 
   ..          ....      ...      ...   ...        ... 
14344     rs8139123  -0.2366  -0.4045   ...     -0.216 

 starting deep copy...done

Adding names
 added colnames
 added rownames
 due to use of deep copy option, recommend only to use descr saved as rbinary description file
 created big.matrix description file: SampQC_CombinedSortdescrFile 
 created big.matrix backing file: SampQC_CombinedSortbckfile 
 created big.matrix binary description file: SampQC_CombinedSortdescrFile.RData 
~wrote file of sample IDs passing all QC to:
  /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/PassQCSamples.txt 

counts
              Mean    DLRS   ChrAb   GCWave
      Mean       3       3       0        1
      DLRS       3       3       0        1
     ChrAb       0       0       0        0
    GCWave       1       1       0        1
 No Others       0       0       0        0

percent of failers
              Mean    DLRS   ChrAb   GCWave
      Mean       1       1       0    0.333
      DLRS       1       1       0    0.333
     ChrAb       0       0       0        0
    GCWave   0.333   0.333       0    0.333
 No Others       0       0       0        0

percent of callrate passing sample
              Mean    DLRS   ChrAb   GCWave
      Mean    0.03    0.03       0     0.01
      DLRS    0.03    0.03       0     0.01
     ChrAb       0       0       0        0
    GCWave    0.01    0.01       0     0.01
 No Others       0       0       0        0

Frequency count of number of separate QC indices failed per sample
         count         %
 none       97        97
    3        2         2
  All        1         1

~wrote QC summary to:
  /chiswick/data/ncooper/vTest/pipesDisease/SAMPLEQC/MEAN_DLRS_GC/QCsummaryTable.txt 
mean sample call rate is now: 0.9998749
Generating report (sample)
           CallRate Samples Percent
1    callrate < 0.5       0      0%
2   callrate < 0.75       0      0%
3    callrate < 0.9       0      0%
4   callrate < 0.95       0      0%
5  callrate >= 0.95      97    100%
6  callrate >= 0.97      97    100%
7  callrate >= 0.99      97    100%
8 callrate >= 0.999      97    100%

==> full info object written to: /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/sampleinfo.tab 

##################################
# 4. PCA AND PC-BATCH CORRECTION #
##################################

Loading required package: bigalgebra
[1] TRUE
sample.info: 
First 3 records excerpt:
       grp   plate   well phenotype QCfail sex call.rate heterozygosity
ID0001   1 PLT0001 R01C01         1      0   2 0.9998606      0.2421278
ID0002   1 PLT0001 R02C01         1      0   2 0.9998606      0.2275336
ID0003   1 PLT0001 R03C01         1      0   1 1.0000000      0.2207557
snp.info: 
First 3 records excerpt:
RangedData with 3 rows and 4 value columns across 25 spaces
                 space             ranges |     gindx call.rate     P.hwe
              <factor>          <IRanges> | <numeric> <numeric> <numeric>
imm_1_7722552        1 [7722552, 7722552] |   7722552         1 0.6136694
imm_1_7722929        1 [7722929, 7722929] |   7722929         1 0.8748153
imm_1_7723190        1 [7723190, 7723190] |   7723190         1 0.6248590
                 QCfail
              <numeric>
imm_1_7722552         0
imm_1_7722929         0
imm_1_7723190         0

Selecting SNP subset for PCA based on a 35% random selection of SNPS
 choosing spaced 35 % subset of SNPs
 selecting only autosomes
snp.info contains data for chromsomes: 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22 
 filtered 10 locations in MHC region
 filtered 1 SNP locations in telomeric,centromeric and immunoglobin regions
 total number of SNPs kept: 1037 [ 6.9 %]
 total of 4299 removed because they did not uniquely map to 1 location
~wrote list of SNPs to use in the PCA to file:
  /chiswick/data/ncooper/vTest/pipesDisease/ANNOTATION/pca.snp.subset.txt 

Filtering samples/snps with SNP-QC failures:
 attached matrix with dims: 14344,97 
 calculating selections for snps
 selected 97 listed samples and 1037 Snps
 starting deep copy...done
[1] "/chiswick/data/ncooper/vTest/pipesDisease/BIGMATRICES/PCAMatrixSortdescrFile.RData"

Running Principle Components Analysis (PCA), using LRR-data subset:

[1] 989  97

Big matrix; 'pcaMat', with: 989 rows, 97 columns
 - data type: numeric 

                   colnames 
Row#      rownames   ID0001   ID0002  .....    ID0100 
   1 imm_1_7768154  -0.0969  -0.1352   ...    -0.0052 
   2     rs3737964  -0.1382   -0.165   ...     0.0687 
   3     rs6675934  -0.2057  -0.2601   ...     0.0393 
  ..          ....      ...      ...   ...        ... 
 989     rs8139123  -0.2366  -0.4045   ...     -0.216 

 centering data by row means... means for first 10 snps:
 imm_1_7768154      rs3737964      rs6675934      rs3121607 imm_1_13815022 
             0              0              0              0              0 
    rs12754997      rs4661493      rs7546786     rs12562864  vh_1_16072147 
             0              0              0              0              0 
 replaced missing data with mean (PCA cannot handle missing data)
 PCA by singular value decomposition...took 0 minutes
[1] "thus ones"
result (list, 20; c(989, 1); c(97, 20); 1; 1 )
$d:
[1] 14.610883 10.030541  7.869561  5.787917  4.633890  4.373520
$u:
             [,1]
[1,]  0.006311974
[2,] -0.020664785
[3,] -0.016732466
[4,] -0.028602699
[5,] -0.012573031
[6,] -0.004185314
[7,] -0.004568961
$v:

      col# 
 row#        1        2  .....        20 
    1   0.1867  -0.2058   ...     0.1384 
    2   0.1823  -0.2109   ...     0.0858 
    3    0.168  -0.2102   ...    -0.0032 
    4   0.1297  -0.1755   ...     0.2107 
    5   0.0479  -0.0745   ...    -0.0864 
    6  -0.1178   0.0885   ...     -0.136 
   ..      ...      ...   ...        ... 
   97    0.087   0.2119   ...     0.1024 
$iter:
[1] 17
$mprod:
[1] 146
NULL

return.loadings: FALSE (logical, 1)
nU: 0 (numeric, 1)
~wrote PC data to file: /chiswick/data/ncooper/vTest/pipesDisease/PCA/PCsEVsFromPCA.RData 
 generating scree plots for principal components analyses
 estimate of eigenvalue sum of 77 uncalculated eigenvalues: 76.62541 
 slope [a + bx] : -0.3484252 
~wrote file: /chiswick/data/ncooper/vTest/pipesDisease/PCA/ScreePlotPCA.pdf 
 78.5 % Est. LRR variance explained by first 12 components.

Running Principle Components correction (PC-correction), using LRR-dataset:

Big matrix; 'origMat', with: 14344 rows, 97 columns
 - data type: numeric 

                    colnames 
 Row#      rownames   ID0001   ID0002  .....    ID0100 
    1 imm_1_7722552  -0.3457  -0.3033   ...    -0.3835 
    2 imm_1_7722929  -0.0482  -0.0999   ...    -0.0683 
    3 imm_1_7723190  -0.0129  -0.0722   ...    -0.0861 
   ..          ....      ...      ...   ...        ... 
14344     rs8139123  -0.2366  -0.4045   ...     -0.216 

 creating new file backed big.matrix to store corrected data...done
 correcting by principle components, taking the regression-residual for each variable
0         25%         50%         75%         100%
..................................................

PC-corrected dataset produced:

Big matrix; 'pcCorMat', with: 14344 rows, 97 columns
 - data type: numeric 

                    colnames 
 Row#      rownames   ID0001   ID0002  .....    ID0100 
    1 imm_1_7722552   0.0027    0.033   ...    -0.0508 
    2 imm_1_7722929   0.0215  -0.0089   ...    -0.0143 
    3 imm_1_7723190    0.037  -0.0217   ...    -0.0566 
   ..          ....      ...      ...   ...        ... 
14344     rs8139123   0.0927  -0.1019   ...     0.0443 

~wrote PC-corrected data description file to:
  /chiswick/data/ncooper/vTest/pipesDisease/BIGMATRICES/describePCcorrect12.RData 

Running analyses to compare pre/post PC distributions (can take a long time)

Calculating sample-wise statistics for LRR
 calculating column means...took 0 seconds
 calculating column SDs...took 0 seconds
 calculating column DLRS (apply method) ...took 0.9 seconds

Adding GC wave to LRR stats, be aware this can be slow
 100% match between snp.info annotation and big.matrix file
 doing median calculation
0         25%         50%         75%         100%
..................................................
 took 0 hours
 calculating Diskin constants...
~wrote boxplot:
  /chiswick/data/ncooper/vTest/pipesDisease/SAMPLEQC/MEAN_DLRS_GC/PostPCDistributionsBoxPlot.pdf 
~wrote table
 /chiswick/data/ncooper/vTest/pipesDisease/SAMPLEQC/MEAN_DLRS_GC/PostPCStatsPerSample.tab 


Cohort distribution statistics for LRR-stats:
            Mean     DLRS    GCWave
   Mean        0   0.0661    -3e-04
     SD    0.003   0.0049    0.0093
    Min  -0.0075   0.0573   -0.0117
     Q1  -0.0018   0.0625   -0.0091
 Median        0   0.0655   -0.0075
     Q3   0.0018   0.0693    0.0089
    Max   0.0072   0.0815    0.0145
     LB  -0.0072   0.0524    -0.036
     UB   0.0072   0.0794    0.0359
   -2SD   -0.006   0.0563    -0.019
   +2SD    0.006   0.0759    0.0183
   -3SD  -0.0091   0.0514   -0.0283
   +3SD   0.0091   0.0808    0.0276
  Low1%  -0.0075   0.0573   -0.0117
   Hi1%   0.0065   0.0787    0.0122

~wrote plots to: /chiswick/data/ncooper/vTest/pipesDisease/PCA/ThreeStageComparisonplate.pdf 

####################################
# 5. RUN CNV CALLING WITH PENN-CNV #
####################################


Preparing for the running of PennCNV.

Preparing input files for PENN-CNV from LRR and BAF
 using LRR big.matrix file: /chiswick/data/ncooper/vTest/pipesDisease/BIGMATRICES/describePCcorrect12.RData 
 using BAF big.matrix file: /chiswick/data/ncooper/vTest/pipesDisease/BIGMATRICES/BAF.RData 
Big matrix with: 15338 rows, 100 columns
 - data type: numeric 

                     colnames 
 Row#       rownames   ID0001   ID0002  .....    ID0100 
    1 chr1_171422483        1   0.9941   ...          1 
    2 chr11_76048775        0        0   ...     0.0022 
    3 chr11_76048907        1        1   ...          1 
   ..           ....      ...      ...   ...        ... 
15338  vh_X_48999118   0.0029        0   ...          0 

Big matrix with: 14344 rows, 97 columns
 - data type: numeric 

                    colnames 
 Row#      rownames   ID0001   ID0002  .....    ID0100 
    1 imm_1_7722552   0.0027    0.033   ...    -0.0508 
    2 imm_1_7722929   0.0215  -0.0089   ...    -0.0143 
    3 imm_1_7723190    0.037  -0.0217   ...    -0.0566 
   ..          ....      ...      ...   ...        ... 
14344     rs8139123   0.0927  -0.1019   ...     0.0443 


Will create 19 penn folders with sizes: N=5 (17); N=6 (2) 
97 cols from LRR in BAF
14344 rows from LRR in BAF
 BAF missing 0 samples in LRR file
 BAF missing 0 snps in LRR file
 generating individual sample LRR/BAF files in Penn-CNV format:
minutes remaining: 0..0..0..0..
~wrote 19 PennCNV sample selection files to:
  /chiswick/data/ncooper/vTest/pipesDisease/PENNCNV/PENNRAWFILES/ 
 number of samples written per PENN-CNV directory: N=5 (17); N=6 (2) 

Generate GC percentage for SNPs
 using build hg18 and chromosomes 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22 

 loading GC data for SNPs...took 0.1 minutes
 0 zero GC values set to missing (NA)
~wrote SNP GC averages to file:
  /chiswick/data/ncooper/vTest/pipesDisease/PENNCNV/marker.gcm 

Regenerating BAF average data from BAF matrix
0         25%         50%         75%         100%
..................................................
~wrote file baf means for each SNP to file:
  /chiswick/data/ncooper/vTest/pipesDisease/PENNCNV/BAF.pfb 

Running the PennCNV (hidden markov model for CNV calling)
 using the hmm file:  /chiswick/data/ncooper/ImmunochipFamilies/ANNOTATION/hh0+.hmm 

~wrote 19 PennCNV sample selection files to:
  /chiswick/data/ncooper/vTest/pipesDisease/PENNCNV/PENNRAWFILES/ 

Submitting PennCNV calls to grid...

 expect processing via the cluster to take roughly 0.02hrs ...
 note that if restarting previous run, existing penn-cnv jobs should be deleted to avoid conflict
 submitting bash commands to grid...
 expect processing via the cluster to take roughly 0.02hrs ...
 submitted 19 jobs to all.q [qsub]
. completed 19/19 qsub jobs
 qsub commands processing completed in 0.02 hours

#########################
# 6. CNV QC AND SUMMARY #
#########################

 silently loading bioconductor packages: IRanges, BiocGenerics, Biobase, GenomicRanges, genoset, BSgenome, Rsamtools, rtracklayer, biomaRt, gage, graph, multtest, GenomicFeatures, AnnotationDbi ... done
Running CNV-QC on processed PennCNV files
 phenotypes found in annotation file:
pheno
 1  2 
43 54 
~wrote fam file: /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink.fam 
 merging adjacent cnvs with <20% gaps between them ('clean_cnv.pl combineseg')..
 removing CNVs with >50% overlap with immunoglobin, telomeric and centromeric regions
~wrote file cnvs_in_badRegions.txt.tmp with unwanted path text removed
. done
 converting penn-cnv file to plink format
~wrote file plink.cnv with unwanted path text removed

Filtering samples with a large number of CNVs

 distribution: mean=1.11, SD=0.33   ==>   threshold=2   [mean + 3.5*sd]

CNV length stats  
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    487    6727   28130   76330   45660  343500 

$`length >0 and <=1kb`
[1] 1

$`length >1kb and <=10kb`
[1] 2

$`length >10kb and <=50kb`
[1] 5

$`length >50kb and <=100kb`
[1] 0

$`length >100kb and <=500kb`
[1] 2

$`length >500kb and <=5mb`
[1] 0

$`length >5mb `
[1] 0

lenz (integer, 10) [head]:
[1]  35132  47907 343451   2794   2060  21130

ord.list (matrix, 9*2)

      colnames 
 row#         ss          tt 
    1     ID0014           1 
    2     ID0017           1 
    3     ID0042           1 
    .        ...         ... 
    9     ID0072           2 

ss (character, 9) [head]:
[1] "ID0014" "ID0017" "ID0042" "ID0048" "ID0073" "ID0076"

tt (numeric, 9) [head]:
[1] 1 1 1 1 1 1


30 highest CNV samples  
      SampleIDs CNVs
 [1,] "ID0014"  "1" 
 [2,] "ID0017"  "1" 
 [3,] "ID0042"  "1" 
 [4,] "ID0048"  "1" 
 [5,] "ID0073"  "1" 
 [6,] "ID0076"  "1" 
 [7,] "ID0084"  "1" 
 [8,] "ID0098"  "1" 
 [9,] "ID0072"  "2" 

HISTO of CNVs per sample  
  1   ......................................................................................... 
1.2    
1.4    
1.6    
1.8   ........... 
NULL

 list of 0 samples with too many CNVs from plink.cnv :
character(0)

 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink.cnv 
 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink.fam 
 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink.cnv.map 
 done

Filtering samples with a large number of rareDUPs
 cutoff for duplicates: 4; p<0.01, X~poisson(0.75)

CNV length stats [DUPs] 
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   2794    2794    2794    2794    2794    2794 

$`length >0 and <=1kb`
[1] 0

$`length >1kb and <=10kb`
[1] 1

$`length >10kb and <=50kb`
[1] 0

$`length >50kb and <=100kb`
[1] 0

$`length >100kb and <=500kb`
[1] 0

$`length >500kb and <=5mb`
[1] 0

$`length >5mb `
[1] 0

lenz: 2794 (integer, 1)
ord.list (matrix, 1*2)
     [,1]     [,2]
[1,] "ID0084" "1" 

ss: ID0084 (character, 1)
tt: 1 (numeric, 1)

30 highest CNV samples [DUPs] 
     SampleIDs CNVs
[1,] "ID0084"  "1" 

HISTO of CNVs per sample [DUPs] 
 using halved %'s as maximum freq is too big for terminal
0   .................................................. 
NULL

 list of 0 samples with too many CNVs from rareDUP :
character(0)

 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt.cnv 
 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt.fam 
 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt.cnv.map 
 done

Filtering samples with a large number of rareDELs
 cutoff for deletions: 4; p<0.01, X~poisson(0.6)

CNV length stats [DELs] 
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  38900   38900   38900   38900   38900   38900 

$`length >0 and <=1kb`
[1] 0

$`length >1kb and <=10kb`
[1] 0

$`length >10kb and <=50kb`
[1] 1

$`length >50kb and <=100kb`
[1] 0

$`length >100kb and <=500kb`
[1] 0

$`length >500kb and <=5mb`
[1] 0

$`length >5mb `
[1] 0

lenz: 38899 (integer, 1)
ord.list (matrix, 1*2)
     [,1]     [,2]
[1,] "ID0073" "1" 

ss: ID0073 (character, 1)
tt: 1 (numeric, 1)

30 highest CNV samples [DELs] 
     SampleIDs CNVs
[1,] "ID0073"  "1" 

HISTO of CNVs per sample [DELs] 
 using halved %'s as maximum freq is too big for terminal
0   .................................................. 
NULL

 list of 0 samples with too many CNVs from rareDEL :
character(0)

 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt_DUPrcnt.cnv 
 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt_DUPrcnt.fam 
 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt_DUPrcnt.cnv.map 
 done

Filtering samples from plates with a large number of CNVs per sample

Plates with too many CNVs (oversensitive)
[none exceeded boundary]

Plates with too few CNVs (undersensitive)
[none exceeded boundary]

 list of 0 samples from plates with too many CNVs from plink_CNVcnt_DUPrcnt_DELrcnt.cnv :
character(0)

 samples from plates with too few noted but left in the dataset

 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt_DUPrcnt_DELrcnt.cnv 
 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt_DUPrcnt_DELrcnt.fam 
 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt_DUPrcnt_DELrcnt.cnv.map 
 done

Filtering samples from plates with a large number of rare CNVs per sample
[NB: tagged plates may be same as filtered above for all CNVs]

Plates with too many CNVs (oversensitive)
[none exceeded boundary]

Plates with too few CNVs (undersensitive)
[none exceeded boundary]

 list of 0 samples from plates with too many CNVs from rareDEL,rareDUP :
character(0)

 samples from plates with too few noted but left in the dataset

 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt_DUPrcnt_DELrcnt_PLATEcnt.cnv 
 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt_DUPrcnt_DELrcnt_PLATEcnt.fam 
 no samples removed from:
  /chiswick/data/ncooper/vTest/pipesDisease/CNVQC/plink_CNVcnt_DUPrcnt_DELrcnt_PLATEcnt.cnv.map 
 done

CNV-QC complete
~wrote CNVs as Ranges object, saved to:
  /chiswick/data/ncooper/vTest/pipesDisease/RESULTS/112.RData 

=== SNP SUMMARY ===
15338 SNPs in starting dataset
686 SNPs failed SNP-QC
14344 SNPs passed QC

=== SAMPLE SUMMARY ===
100 samples in starting dataset
3 samples failed due to other criteria
97 samples passed QC

=== COHORT SUMMARY ===
      gr
pf     grp 1
  pass    97
  fail     3
3% failed in grp=1

=== PHENOTYPE SUMMARY ===
      ph
pf     pheno 1 pheno 2
  pass      43      54
  fail       3       0

6.52% failed in phenotype=1
0% failed in phenotype=2
9 samples had at least one CNV


plumbCNV pipeline complete
 Resulting *.cnv files: allCNV, allDel, allDup, rareDEL, rareDUP contain, respectively:
   all CNVs, all deletions, all duplications, rare deletions, rare duplications. 
 These files can be processed and analysed using plink. 
 Subfolders of the working plumbCNV directory now contain:
   datasets, annotation, plots, tables, generated during intermediate steps.
 The list object returned by plumbCNV() contains: 
   the same CNVs lists as above (in RangedData objects), overlap summaries, CNV-ratios by 
   phenotype, CNV-regions with Fishers exact tests [or TDT test for family data]. 
 These can be further explored using R packages such as:
   cnvGSA (association tests), genoset (using the saved RangedData objects, plumbCNV LRR/BAF
   plotting functions and bioconductor overlap functions, etc).
 Thankyou for using plumbCNV.


================
= CNVs called: =
================

cnvResult (list, c(10, 6); c(4, 6); c(6, 6); c(1, 6); c(1, 6) )
$allCNV:
RangedData with 6 rows and 6 value columns across 8 spaces
     space                 ranges |          id        cn   numSnps       fid
  <factor>              <IRanges> | <character> <integer> <integer> <integer>
1        2 [ 45426554,  45428614] |      ID0048         3         3         1
2        2 [185114776, 185153675] |      ID0073         1        89         1
3        6 [ 18226077,  18247207] |      ID0098         3         3         1
4        7 [110764580, 111017480] |      ID0014         1         5         1
5        8 [ 15371515,  15390040] |      ID0017         3         4         1
6        9 [138366205, 138368999] |      ID0084         3         8         1
      score phenotype
  <integer> <numeric>
1         0         2
2         0         1
3         0         2
4         0         1
5         0         1
6         0         2
$allDel:
RangedData with 4 rows and 6 value columns across 4 spaces
     space                 ranges |          id        cn   numSnps       fid
  <factor>              <IRanges> | <character> <integer> <integer> <integer>
1        2 [185114776, 185153675] |      ID0073         1        89         1
2        7 [110764580, 111017480] |      ID0014         1         5         1
3       16 [ 11368795,  11369282] |      ID0076         1         3         1
4       19 [ 20024633,  20072540] |      ID0072         1         3         1
      score phenotype
  <integer> <numeric>
1         0         1
2         0         1
3         0         1
4         0         1
$allDup:
RangedData with 6 rows and 6 value columns across 6 spaces
     space                 ranges |          id        cn   numSnps       fid
  <factor>              <IRanges> | <character> <integer> <integer> <integer>
1        2 [ 45426554,  45428614] |      ID0048         3         3         1
2        6 [ 18226077,  18247207] |      ID0098         3         3         1
3        8 [ 15371515,  15390040] |      ID0017         3         4         1
4        9 [138366205, 138368999] |      ID0084         3         8         1
5       11 [ 11762369,  11797501] |      ID0042         3         4         1
6       19 [ 22616359,  22959810] |      ID0072         3         3         1
      score phenotype
  <integer> <numeric>
1         0         2
2         0         2
3         0         1
4         0         2
5         0         2
6         0         1
$rareDEL:
RangedData with 1 row and 6 value columns across 1 space
     space                 ranges |          id        cn   numSnps       fid
  <factor>              <IRanges> | <character> <integer> <integer> <integer>
1        2 [185114776, 185153675] |      ID0073         1        89         1
      score phenotype
  <integer> <numeric>
1         0         1
$rareDUP:
RangedData with 1 row and 6 value columns across 1 space
     space                 ranges |          id        cn   numSnps       fid
  <factor>              <IRanges> | <character> <integer> <integer> <integer>
1        9 [138366205, 138368999] |      ID0084         3         8         1
      score phenotype
  <integer> <numeric>
1         0         2
NULL

There were 16 warnings (use warnings() to see them)
