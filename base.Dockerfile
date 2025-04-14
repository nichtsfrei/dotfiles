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
	fish && \
	dnf clean all
RUN useradd -m user
RUN echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/user && chmod 440 /etc/sudoers.d/user
# TODO: when copying as user it should be owned by user without having to call chown?
COPY nvim /home/user/.config/nvim
COPY gitconfig /home/user/.gitconfig
RUN chown -R user:user /home/user/.gitconfig
RUN chown -R user:user /home/user/.config
RUN chown -R user:user /usr/local/src
USER user
WORKDIR /home/user
RUN nvim --headless "+Lazy! sync" "+TSUpdateSync" +qa
# RUN fish -c "fish_add_path /home/user/.local/bin" && \
# 	fish -c "fish_add_path /home/user/.cargo/bin"
CMD [ "/usr/bin/fish" ]
