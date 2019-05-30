package=crate_proc_macro2
$(package)_crate_name=proc-macro2
$(package)_version=0.4.14
$(package)_download_path=https://static.crates.io/crates/$($(package)_crate_name)
$(package)_file_name=$($(package)_crate_name)-$($(package)_version).crate
$(package)_sha256_hash=b331c6ad3411474cd55540398dc7ad89fc41488e64ec71fdecc9c9b86de96fb0
$(package)_crate_versioned_name=$($(package)_crate_name)

define $(package)_preprocess_cmds
  $(call generate_crate_checksum,$(package))
endef

define $(package)_stage_cmds
  $(call vendor_crate_source,$(package))
endef
