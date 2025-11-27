#!/bin/bash

# download https://figshare.com/ndownloader/articles/28369088?private_link=c5aeb5bc039a2990fc89
# download https://figshare.com/ndownloader/articles/28375844?private_link=854df579f68882779a06
mv 28369088.zip demo_data.zip
mv 28375844.zip fasta_split.zip

# extract all files
unzip demo_data.zip && tar -xvf scan2_out.tar.gz
unzip fasta_split.zip
rm demo_data.zip scan2_out.tar.gz fasta_split.zip
(
  cd fasta_split 
  for tarfile in *.tar.gz; do
      tar -xzvf "$tarfile"
  done
)