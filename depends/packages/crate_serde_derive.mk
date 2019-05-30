package=crate_serde_derive
$(package)_crate_name=serde_derive
$(package)_version=1.0.75
$(package)_download_path=https://static.crates.io/crates/$($(package)_crate_name)
$(package)_file_name=$($(package)_crate_name)-$($(package)_version).crate
$(package)_sha256_hash=234fc8b737737b148ccd625175fc6390f5e4dacfdaa543cb93a3430d984a9119
$(package)_crate_versioned_name=$($(package)_crate_name)

define $(package)_preprocess_cmds
  $(call generate_crate_checksum,$(package))
endef

define $(package)_stage_cmds
  $(call vendor_crate_source,$(package))
endef
