psql -h ${PGHOST} -d postgres -p ${PGPORT} -U pgroot -W \
  -c "CREATE USER ${PGUSER} WITH ENCRYPTED PASSWORD '${PGPASSWORD}';" \
  -c "CREATE USER ${PGUSER_READ_ONLY} WITH ENCRYPTED PASSWORD '${PGPASSWORD_READ_ONLY}';" \
  -c "GRANT ${PGUSER} TO pgroot;" \
  -c "CREATE DATABASE main OWNER ${PGUSER};" \
  2>&1 | grep --color=auto -iE 'warn|error|$'
