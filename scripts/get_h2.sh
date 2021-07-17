#! /bin/sh
trait=$1

python2 ~/midway/expression/scripts/ldsc/ldsc.py \
--h2 ~/midway/ldsc/$trait/${trait}_GWAS_sumstats \
--ref-ld-chr ~/midway/ldsc/eur_w_ld_chr/ \
--w-ld-chr ~/midway/ldsc/eur_w_ld_chr/ \
--out ~/midway/ldsc/$trait/${trait}_h2