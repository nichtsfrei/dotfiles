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
	tmux \
	fish && \
	dnf clean all
