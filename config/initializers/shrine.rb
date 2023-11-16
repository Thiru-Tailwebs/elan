require "shrine"
require "shrine/storage/file_system"

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"), # temporary
  store: Shrine::Storage::FileSystem.new("public", prefix: "uploads"),       # permanent
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data # for retaining the cached file across form redisplays
Shrine.plugin :restore_cached_data # re-extract metadata when attaching a cached file
Shrine.plugin :validation_helpers
Shrine.plugin :pretty_location # This plugin uses the context information from the Attacher to try to generate a nested folder structure which separates files for each record.
Shrine.plugin :derivatives, create_on_promote: true
Shrine.plugin :remove_attachment
