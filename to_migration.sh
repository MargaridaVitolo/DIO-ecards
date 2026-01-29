rm -f $1migration.sql
ls -l1 $1*sql|sort|xargs -n1 gsed '$aGO\n' > $1migration.sql
