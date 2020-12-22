#!/bin/env bash

move_statement_files () {
		find . -regex ./SS.*physpd.csv* -exec mv {} ~/sahel_label/secretly/phy \;
		find . -regex ./SS.*digpd.csv* -exec mv {} ~/sahel_label/secretly/dig \;
		find . -regex ./SS.*qb.xlsx* -exec mv {} ~/sahel_label/secretly/ \;
		find . -regex ./SS.*t.*.xlsx* -exec mv {} ~/sahel_label/secretly/ \;
		find . -regex ./SSwhfees.*.xlsx* -exec mv {} ~/sahel_label/secretly/fees \;
}


clean_up () {
	rm -r __MACOSX
}

move_statement_files
clean_up
