# edit your qiime path here
export PATH="/XXX/miniconda2/bin:$PATH"

biom convert -i feat_table.txt -o feat_table.biom --to-hdf5 --table-type 'Metabolite table'
jackknifed_beta_diversity.py -i feat_table.biom -o bdiv_jk1000 -e 1000 -m mapping_file.txt -p params.txt
compare_categories.py --method adonis -i bdiv_jk1000/unrarefied_bdiv/bray_curtis_feat_table.txt -m mapping_file.txt -c clustid -o adonis_out -n 999
