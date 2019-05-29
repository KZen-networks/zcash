package=crate_serde_json
$(package)_crate_name=serde_json
$(package)_version=1.0.26
$(package)_download_path=https://static.crates.io/crates/$($(package)_crate_name)
$(package)_file_name=$($(package)_crate_name)-$($(package)_version).crate
$(package)_sha256_hash=44dd2cfde475037451fa99b7e5df77aa3cfd1536575fa8e7a538ab36dcde49ae
$(package)_crate_versioned_name=$($(package)_crate_name)

define $(package)_preprocess_cmds
  $(call generate_crate_checksum,$(package))
endef

define $(package)_stage_cmds
  $(call vendor_crate_source,$(package))
endef
