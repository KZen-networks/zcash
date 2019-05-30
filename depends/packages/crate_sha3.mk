package=crate_sha3
$(package)_crate_name=sha3
$(package)_version=0.8.2
$(package)_download_path=https://static.crates.io/crates/$($(package)_crate_name)
$(package)_file_name=$($(package)_crate_name)-$($(package)_version).crate
$(package)_sha256_hash=dd26bc0e7a2e3a7c959bc494caf58b72ee0c71d67704e9520f736ca7e4853ecf
$(package)_crate_versioned_name=$($(package)_crate_name)

define $(package)_preprocess_cmds
  $(call generate_crate_checksum,$(package))
endef

define $(package)_stage_cmds
  $(call vendor_crate_source,$(package))
endef
