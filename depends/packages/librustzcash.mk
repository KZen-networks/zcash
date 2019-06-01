package=librustzcash
$(package)_version=0.1
$(package)_download_path=https://github.com/omershlo/$(package)/archive/
$(package)_file_name=$(package)-$($(package)_git_commit).tar.gz
$(package)_download_file=$($(package)_git_commit).tar.gz
$(package)_sha256_hash=f047023bfdd79d44b1d3ed57b3939ddfcad1a8a3af07e17a73f159ea83eb2c72
$(package)_git_commit=ef6a51ee76176bc0bf8ca819996b4e8615fd1131
$(package)_dependencies=rust $(rust_crates)
$(package)_patches=cargo.config

ifeq ($(host_os),mingw32)
$(package)_library_file=target/x86_64-pc-windows-gnu/release/rustzcash.lib
else
$(package)_library_file=target/release/librustzcash.a
endif

define $(package)_set_vars
$(package)_build_opts= --release
$(package)_build_opts_mingw32=--target=x86_64-pc-windows-gnu
endef

define $(package)_preprocess_cmds
  mkdir .cargo && \
  cat $($(package)_patch_dir)/cargo.config | sed 's|CRATE_REGISTRY|$(host_prefix)/$(CRATE_REGISTRY)|' > .cargo/config
endef

define $(package)_build_cmds
  cargo build $($(package)_build_opts)
endef

define $(package)_stage_cmds
  mkdir $($(package)_staging_dir)$(host_prefix)/lib/ && \
  mkdir $($(package)_staging_dir)$(host_prefix)/include/ && \
  cp $($(package)_library_file) $($(package)_staging_dir)$(host_prefix)/lib/ && \
  cp librustzcash/include/librustzcash.h $($(package)_staging_dir)$(host_prefix)/include/
endef
