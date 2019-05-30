package=crate_zeroize
$(package)_crate_name=zeroize
$(package)_version=0.5.2
$(package)_download_path=https://static.crates.io/crates/$($(package)_crate_name)
$(package)_file_name=$($(package)_crate_name)-$($(package)_version).crate
$(package)_sha256_hash=8ddfeb6eee2fb3b262ef6e0898a52b7563bb8e0d5955a313b3cf2f808246ea14
$(package)_crate_versioned_name=$($(package)_crate_name)

define $(package)_preprocess_cmds
  $(call generate_crate_checksum,$(package))
endef

define $(package)_stage_cmds
  $(call vendor_crate_source,$(package))
endef
