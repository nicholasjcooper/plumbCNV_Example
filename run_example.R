
# install latest versions of packages if not already present #
# packages last updated May 6th, 2015.
# install.packages("humarray_1.0.0.tar.gz",repos=NULL)
# install.packages("reader")
# install.packages("NCmisc")
# install.packages("bigpca")
# ensure that you are using R3.2 or higher, and corresponding up to date versions of bioConductor.

### DEFINE BASE DIRECTORIES ###
base.directory <- "/chiswick/data/ncooper/" # chance this to your own directory that contains the directory 'plumbCNV_Example'
scr.dir <- "~/github/plumbCNV/" # location of the plumbCNV R scripts on your system
###############################

## basic preferences ##
suffix <- 1   # suffix for results file
metabo <- F    
plumber <- T
dgv.valid <- F
samp.excl <- F
eval <- F
my.st <- 0    # step to start at, zero unless restarting pipeline midway
my.end <- 6   # step to end, 6, unless wanting to stop/pause pipeline before the end
do.cnv <- T    # do CNV QC
comp <- F      # TRUE means more stringent sample QC
samp.set <- "light"  
pca.set <- 12   # number of principle components to correct for
restore <- F     # when pipeline has been previously run using the same dataset, this will use any possible existing files instead of creating new ones
sex.correct <- F   # whether to apply an intensity correction for sex
q.cores <- 0# 100 #NA   # number of cores to use if you are using a SunGrid cluster
hmm.file <- "hh550.hmm" # hmm file to use with PennCNV

library(reader); library(bigpca); library(NCmisc); library(humarray)

source(cat.path(scr.dir,"FunctionsCNVAnalysis.R"))

load.all.libs()

## set up the main directories to be used by the pipeline ##

auxdirI <- cat.path(base.directory,"/plumbCNV_Example/preRunAnnotFiles") # annotation files

dir_rawI <- cat.path(base.directory,"/plumbCNV_Example/genomeStudioRawFiles") # raw data in genome studio format
 
dir_baseI <- cat.path(base.directory,"/plumbCNV_Example/pipesDisease")  # base directory for the current project

s.supI <- cat.path(base.directory,"/plumbCNV_Example/genomeStudioRawFiles/lab1dataset.txt.tar.gz")   #preRunAnnotFiles/snpdata.map"

gsfI <- TRUE #FALSE  # whether to get SNP and SAMPLE IDs from the genome studio file, rather than separate annotation files

# modify these parameters below if this does not fit your system specs #
# q.cores is set to 0 (do not use SunGrid to run pennCNV)
# n.cores is set to 22 (utilise up to 22 server cores for long calculations that can be done in parallel)


##############
## SETTINGS ##
##############

# define settings for the run in subgroups using lists #

chip.settings <- list(dir.raw=dir_rawI,dir.base=dir_baseI,snp.support=s.supI,
                      gsf=gsfI,aux.files.dir=auxdirI)


base.settings <- list(dt.name="datatracker",
                      delete.as.we.go=F,big.lrr="LRR.dsc",big.baf="BAF.dsc",
                      grps=c(1),snp.fields=NULL,geno.file=NULL,
                      run.mode=c("scratch","normal","big")[1],
                      snp.run.mode=c("normal","skip","plink")[1],
                      manual.col.nums=NULL,plink.imp=F,fet.analysis.p=0.05,HD.mode=F,
                      n.cores=22,low.ram=F,
                      hide.penn.plink=T,penn.path="/usr/local/bin/penncnv64/",
                      build="hg18",erase.previous=F,verbose=F)


penn.settings <- list(hmm=hmm.file,relative=F,run.manual=F,print.cmds=F,q.cores=0,
                      grid.id="all.q",cluster.fn="q.cmd",use.penn.gc=F)



if(comp) {
  snp.settings <- list(callrate.samp.thr=.94,callrate.snp.thr=.985,hwe.thr=0.0001,
                       snp.grp.miss=T,grp.hwe.z.thr=4,grp.cr.thr=.001,het.lo=.17,het.hi=.25)
} else {
  snp.settings <- list(callrate.samp.thr=.94,callrate.snp.thr=.95,hwe.thr=0.000000001,
                       snp.grp.miss=F,grp.hwe.z.thr=400,grp.cr.thr=10^-20,het.lo=.1,het.hi=.40)
}


if(samp.set=="none") {
  samp.settings <- list(nSD=99,mean.thr=c(NA,NA),dlrs.thr=c(NA,NA),gc.thr=c(NA,NA),
                        badPlateThresh=0.99,skip.chr.ab=T,lob=2,hib=2.5,pctile.bound=0.01,cohort.pc.correct=F,
                        batch="plate",other.batch=list(),
                        lrr.report=T,chr.ab.report=T,plate.report=T)
} else {
  if(samp.set=="light") {
    
    samp.settings <- list(nSD=3.5,mean.thr=c("-3.5SD","+3.5SD"),dlrs.thr=c(NA,"+3.5SD"),gc.thr=c("-3.5SD","+3.5SD"),
                          badPlateThresh=0.40,skip.chr.ab=F,lob=2.5,hib=3,pctile.bound=0.01,cohort.pc.correct=F,
                          batch="plate",other.batch=list(),
                          lrr.report=T,chr.ab.report=T,plate.report=T)
  } else {
    #heavy
    samp.settings <- list(nSD=3,mean.thr=c("LB","UB"),dlrs.thr=c(NA,"UB"),gc.thr=c("LB","UB"),
                          badPlateThresh=0.30,skip.chr.ab=F,lob=2,hib=2.5,pctile.bound=0.01,cohort.pc.correct=F,
                          batch="plate",other.batch=list(),
                          lrr.report=T,chr.ab.report=T,plate.report=T)
  }
}




if(pca.set==0) {
  pca.settings <- list(num.pcs=0,pc.to.keep=.25,assoc=F,n.store=50,correct.sex=sex.correct,
                       add.int=F,preserve.median=F,
                       comparison=F,comp.gc=F,comps="plate",exclude.bad.reg=F)
} else {
  if(pca.set==12) {
    
    pca.settings <- list(num.pcs=12,pc.to.keep=.35,assoc=F,n.store=20,correct.sex=sex.correct,
                         add.int=F,preserve.median=F,
                         comparison=T,comp.gc=T,comps="plate",exclude.bad.reg=T)
  } else {
    #24
    pca.settings <- list(num.pcs=24,pc.to.keep=.50,assoc=F,n.store=50,correct.sex=sex.correct,
                         add.int=F,preserve.median=F,
                         comparison=T,comp.gc=T,comps="plate",exclude.bad.reg=T)
  }
}



if(!do.cnv) {
  #none
  cnv.settings <- list(out.format="Ranges",results="ranges",print.summary.overlaps=F,
                       cnv.qc=F,rare.qc=F,plate.qc=F,pval=0.01,del.rate=2,dup.rate=2,thr.sd=5,plate.thr=5,
                       rmv.low.plates=F,min.sites=4,rare.olp=0.5,rare.pc=0.03,rmv.bad.reg=T)
} else {
  #normal   # RARE  del.rate=0.4,dup.rate=0.2
  cnv.settings <- list(out.format="Ranges",results="ranges",print.summary.overlaps=F,
                       cnv.qc=T,rare.qc=T,plate.qc=T,pval=0.01,del.rate=0.6,dup.rate=0.75,thr.sd=3.5,plate.thr=2.5,
                       rmv.low.plates=F,min.sites=6,rare.olp=0.5,rare.pc=0.05,rmv.bad.reg=T)
}

settings <- c(chip.settings,base.settings,snp.settings,samp.settings,pca.settings,penn.settings,cnv.settings)

###################


dir <- make.dir(cat.path(base.directory,"/plumbCNV_Example/pipesDisease/"))


if(plumber) {
  if(samp.excl) {
    ## add other sample exclusion ##
    system(paste("cp",extra.excl,dir$excl))
  }  
  cnvResult <- plumbcnv(settings,start.at=my.st,pause.after=my.end,restore.mode=restore,
                        result.pref=suffix)
  save(cnvResult,file=cat.path(dir$res,"fullresult",suf=suffix,ext="RData"))
}

Header("CNVs called:")
prv(cnvResult) # show a preview of the object containing the called CNVs

