#!/bin/env bash

export LABEL=~/sahel_label

move_statement_files () {
		
		# Secretly Dist files
		find . -regex ./SS.*physpd.csv* -exec mv {} $LABEL/secretly/phy \;
		find . -regex ./SS.*digpd.csv* -exec mv {} $LABEL/secretly/dig \;
		find . -regex ./SS.*qb.xlsx* -exec mv {} $LABEL/secretly/ \;
		find . -regex ./SS.*t.*.xlsx* -exec mv {} $LABEL/secretly/ \;
		find . -regex ./SSwhfees.*.xlsx* -exec mv {} $LABEL/secretly/fees \;

		# Bandcamp files 
		find . -regex .*_bandcamp_raw_data_Sahel-Sounds.csv -exec mv {} $LABEL/bandcamp/ \; 
  
	
}



clean_up () {
	rm -rf __MACOSX
}

move_statement_files
clean_up
