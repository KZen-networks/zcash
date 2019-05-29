package=crate_serde_json
$(package)_crate_name=serde_json
$(package)_version=0.1.39
$(package)_download_path=https://static.crates.io/crates/$($(package)_crate_name)
$(package)_file_name=$($(package)_crate_name)-$($(package)_version).crate
$(package)_sha256_hash=5a23aa71d4a4d43fdbfaac00eff68ba8a06a51759a89ac3304323e800c4dd40d
$(package)_crate_versioned_name=$($(package)_crate_name)

define $(package)_preprocess_cmds
  $(call generate_crate_checksum,$(package))
endef

define $(package)_stage_cmds
  $(call vendor_crate_source,$(package))
endef
