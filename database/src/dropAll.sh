psql -c "\
DROP SCHEMA IF EXISTS misc CASCADE; \
" 2>&1 | grep --color=auto -iE 'warn|error|fatal|$'
