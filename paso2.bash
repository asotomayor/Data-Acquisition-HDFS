#!/bin/bash

# Export data to the table results using Sqoop
sqoop export \
--connect jdbc:mysql://127.0.0.1/db1 \
--table results \
--export-dir ./results/ \
--username root \
--update-mode allowinsert \
--update-key id \
--input-fields-terminated-by '|' \
--input-lines-terminated-by '\n'
