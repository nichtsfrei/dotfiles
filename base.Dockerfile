# basis for distrobox
FROM fedora:latest
RUN dnf -y --setopt=install_weak_deps=False install \
	bash-completion \
	bc \
	bzip2 \
	clang-tools-extra\
	clangd\
	cracklib-dicts \
	curl \
	diffutils \
	dnf-plugins-core \
	findutils \
	fish \
	fzf \
	gh\
	git\
	glibc-all-langpacks \
	glibc-common \
	glibc-locale-source \
	gnupg2 \
	gnupg2-smime \
	hostname \
	iproute \
	iputils \
	jq \
	keyutils \
	krb5-libs \
	less \
	lsof \
	make\
	man-db \
	man-pages \
	mesa-dri-drivers \
	mesa-vulkan-drivers \
	mtr \
	ncurses \
	neovim\
	nss-mdns \
	openssh-clients \
	pam \
	passwd \
	pigz \
	pinentry \
	procps-ng \
	ripgrep \
	rsync \
	rustup\
	shadow-utils \
	sudo \
	tcpdump \
	time \
	tmux \
	traceroute \
	tree \
	tzdata \
	unzip \
	util-linux \
	vte-profile \
	vulkan \
	wget \
	which \
	whois \
	words \
	xorg-x11-xauth \
	xz \
	zip && \
	dnf clean all
