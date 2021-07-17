#! /bin/sh
trait1=$1
trait2=$2


mkdir ~/midway/ldsc/${trait1}_${trait2}_corr
python2 ~/midway/expression/scripts/ldsc/ldsc.py \
--rg ~/midway/ldsc/$trait1/${trait1}_GWAS_sumstats,~/midway/ldsc/$trait2/${trait2}_GWAS_sumstats \
--ref-ld-chr eur_w_ld_chr/ \
--w-ld-chr eur_w_ld_chr/ \
--out ~/midway/ldsc/${trait1}_${trait2}_corr/${trait1}_${trait2}
