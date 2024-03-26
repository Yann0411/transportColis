export PGUSER=yannchristophe
export PGDATABASE=ocolis
echo $PGUSER

createdb ocolis -O yannchristophe

#DDL
psql -f ocolis.sql
psql -f ocolis_r2.sql
# psql -f ocolis_r3.sql
# psql -f ocolis_r4.sql
# psql -f ocolis_r5.sql

psql -f import_data.sql
