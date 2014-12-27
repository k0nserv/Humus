# Trunk migrations.
#
Sequel::Migrator.run(
  DB,
  File.join(ROOT, 'migrations/trunk'),
  table: 'schema_info',
  version: 11
)

# Metrics migrations.
#
# TODO Figure out a way to merge this with schema_info.
#
Sequel::Migrator.run(
  DB,
  File.join(ROOT, 'migrations/metrics'),
  # This enables us to have separate migrations
  # for each app.
  table: 'schema_info_metrics',
  version: 2
)

Sequel::Migrator.run(
  DB,
  File.join(ROOT, 'migrations/cocoadocs'),
  # This enables us to have separate migrations
  # for each app.
  table: 'schema_info_cocoadocs',
  version: 1
)


File.open('migrations/schema.txt', 'w') { |file| file.write(schema) }