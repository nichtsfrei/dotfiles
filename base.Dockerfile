# basis for distrobox
FROM fedora:latest
RUN dnf -y --setopt=install_weak_deps=False install \
	git\
	gh\
	make\
	neovim\
	ripgrep \
	fzf \
	clangd\
	clang-tools-extra\
	rustup\
	jq \
	fish && \
	dnf clean all
RUN rustup-init -y 
#RUN rustup component add rust-analyzer
