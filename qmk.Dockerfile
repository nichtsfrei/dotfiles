FROM nichtsfrei/base
USER root
RUN dnf -y --setopt=install_weak_deps=False install \
	pipx && \
	dnf clean all
RUN git clone --depth 1 https://github.com/nichtsfrei/qmk_firmware.git /usr/local/src/qmk_firmware
RUN pipx install qmk
RUN /root/.local/bin/qmk setup -y -H /usr/local/src/qmk_firmware
WORKDIR /usr/local/src/qmk_firmware
RUN fish -c "fish_add_path /root/.local/bin"
RUN git remote set-url origin git@github.com:nichtsfrei/qmk_firmware.git
RUN qmk generate-compilation-database -kb zsa/voyager -km nichtsfrei
RUN ln -s /home/user/.config/nvim /root/.config/nvim
CMD [ "/usr/bin/fish" ]
