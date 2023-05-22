# TODO: Migrate different versions based on the current version

psql -f src/versions/20230522Init.sql \
  2>&1 | grep --color=auto -iE 'warn|error|$'
