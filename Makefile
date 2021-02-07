PACKAGES := bottom dust procs tealdeer zoxide
PACKAGES += ungoogled-chromium chromium-darkreader chromium-ublock-origin chromium-plasma-integration
PACKAGES += tor-browser
PACKAGES += gitkraken
PACKAGES += burpsuite
PACKAGES += osu-lazer
#PACKAGES += volatility3
#PACKAGES += python-base58 python-base91 python-cipheycore python-cipheydists python-click-spinner python-loguru python-pybase62 ciphey
PACKAGES += icarus-theme kwin-krohnkite otf-nerd-fonts-fira-code
PACKAGES += neovim-airline-themes neovim-airline neovim-dracula
PACKAGES += rockyou dirbuster-wordlists

.PHONY: all
all: $(PACKAGES) repo

.PHONY: repo
repo:
	repo-add icarus.db.tar.gz *.pkg.tar.zst

.PHONY: bottom
bottom:
ifeq (,$(wildcard bottom*.pkg.tar.zst))
	cd bottom; makepkg -rsfc --noconfirm
	@mv bottom/bottom*.pkg.tar.zst .
endif

.PHONY: burpsuite
burpsuite:
ifeq (,$(wildcard burpsuite*.pkg.tar.zst))
	cd burpsuite; makepkg -rsfc --noconfirm
	@mv burpsuite/burpsuite*.pkg.tar.zst .
endif

.PHONY: ciphey
ciphey:
ifeq (,$(wildcard ciphey*.pkg.tar.zst))
	#sudo pacman -S python-setuptools
	#sudo pacman -S python-dephell
	cd ciphey; makepkg -rsfc --noconfirm
	@mv ciphey/ciphey*.pkg.tar.zst .
endif

.PHONY: chromium-darkreader
chromium-darkreader:
ifeq (,$(wildcard chromium-darkreader*.pkg.tar.zst))
	cd chromium-darkreader; makepkg -rsfc --noconfirm
	@mv chromium-darkreader/chromium-darkreader*.pkg.tar.zst .
endif

.PHONY: chromium-ublock-origin
chromium-ublock-origin:
ifeq (,$(wildcard chromium-ublock-origin*.pkg.tar.zst))
	cd chromium-ublock-origin; makepkg -rsfc --noconfirm
	@mv chromium-ublock-origin/chromium-ublock-origin*.pkg.tar.zst .
endif

.PHONY: chromium-plasma-integration
chromium-plasma-integration:
ifeq (,$(wildcard chromium-plasma-integration*.pkg.tar.zst))
	cd chromium-plasma-integration; makepkg -rsfc --noconfirm
	@mv chromium-plasma-integration/chromium-plasma-integration*.pkg.tar.zst .
endif

.PHONY: dirbuster-wordlists
dirbuster-wordlists:
ifeq (,$(wildcard dirbuster-wordlists*.pkg.tar.zst))
	cd dirbuster-wordlists; makepkg -rsfc --noconfirm
	@mv dirbuster-wordlists/dirbuster-wordlists*.pkg.tar.zst .
endif

.PHONY: dust
dust:
ifeq (,$(wildcard dust*.pkg.tar.zst))
	cd dust; makepkg -rsfc --noconfirm
	@mv dust/dust*.pkg.tar.zst .
endif

.PHONY: gitkraken
gitkraken:
ifeq (,$(wildcard gitkraken*.pkg.tar.zst))
	cd gitkraken; makepkg -rsfc --noconfirm
	@mv gitkraken/gitkraken*.pkg.tar.zst .
endif

.PHONY: icarus-theme
icarus-theme:
ifeq (,$(wildcard icarus-theme*.pkg.tar.zst))
	cd icarus-theme; makepkg -rsfc --noconfirm
	@mv icarus-theme/icarus-theme*.pkg.tar.zst .
endif

.PHONY: kwin-krohnkite
kwin-krohnkite:
ifeq (,$(wildcard kwin-krohnkite*.pkg.tar.zst))
	cd kwin-krohnkite; makepkg -rsfc --noconfirm
	@mv kwin-krohnkite/kwin-krohnkite*.pkg.tar.zst .
endif

.PHONY: neovim-airline
neovim-airline:
ifeq (,$(wildcard neovim-airline[-0-9]*.pkg.tar.zst))
	cd neovim-airline; makepkg -rsfc --noconfirm
	@mv neovim-airline/neovim-airline*.pkg.tar.zst .
endif

.PHONY: neovim-airline-themes
neovim-airline-themes:
ifeq (,$(wildcard neovim-airline-themes*.pkg.tar.zst))
	cd neovim-airline-themes; makepkg -rsfc --noconfirm
	@mv neovim-airline-themes/neovim-airline-themes*.pkg.tar.zst .
endif

.PHONY: neovim-dracula
neovim-dracula:
ifeq (,$(wildcard neovim-dracula*.pkg.tar.zst))
	cd neovim-dracula; makepkg -rsfc --noconfirm
	@mv neovim-dracula/neovim-dracula*.pkg.tar.zst .
endif

.PHONY: osu-lazer
osu-lazer:
ifeq (,$(wildcard osu-lazer*.pkg.tar.zst))
	@echo osu-lazer pulled from chaotic aur
	@$(shell curl -O --output-dir osu-lazer/ https://chaotic.dr460nf1r3.me/repos/chaotic-aur/x86_64/$(shell curl -s https://chaotic.dr460nf1r3.me/repos/chaotic-aur/x86_64/ | grep -o 'osu-lazer-[^"]*' | head -n1))
	@mv osu-lazer/osu-lazer*.pkg.tar.zst .
	#cd osu-lazer; makepkg -rsfc --noconfirm
endif

.PHONY: otf-nerd-fonts-fira-code
otf-nerd-fonts-fira-code:
ifeq (,$(wildcard otf-nerd-fonts-fira-code*.pkg.tar.zst))
	cd otf-nerd-fonts-fira-code; makepkg -rsfc --noconfirm
	@mv otf-nerd-fonts-fira-code/otf-nerd-fonts-fira-code*.pkg.tar.zst .
endif

.PHONY: procs
procs:
ifeq (,$(wildcard procs*.pkg.tar.zst))
	cd procs; makepkg -rsfc --noconfirm
	@mv procs/procs*.pkg.tar.zst .
endif

.PHONY: python-base58
python-base58:
ifeq (,$(wildcard python-base58*.pkg.tar.zst))
	cd python-base58; makepkg -rsfc --noconfirm
	@mv python-base58/python-base58*.pkg.tar.zst .
endif

.PHONY: python-base91
python-base91:
ifeq (,$(wildcard python-base91*.pkg.tar.zst))
	cd python-base91; makepkg -rsfc --noconfirm
	@mv python-base91/python-base91*.pkg.tar.zst .
endif

.PHONY: python-cipheycore
python-cipheycore:
ifeq (,$(wildcard python-cipheycore*.pkg.tar.zst))
	cd python-cipheycore; makepkg -rsfc --noconfirm
	@mv python-cipheycore/python-cipheycore*.pkg.tar.zst .
endif

.PHONY: python-cipheydists
python-cipheydists:
ifeq (,$(wildcard python-cipheydists*.pkg.tar.zst))
	cd python-cipheydists; makepkg -rsfc --noconfirm
	@mv python-cipheydists/python-cipheydists*.pkg.tar.zst .
endif

.PHONY: python-click-spinner
python-click-spinner:
ifeq (,$(wildcard python-click-spinner*.pkg.tar.zst))
	cd python-click-spinner; makepkg -rsfc --noconfirm
	@mv python-click-spinner/python-click-spinner*.pkg.tar.zst .
endif

.PHONY: python-loguru
python-loguru:
ifeq (,$(wildcard python-loguru*.pkg.tar.zst))
	cd python-loguru; makepkg -rsfc --noconfirm
	@mv python-loguru/python-loguru*.pkg.tar.zst .
endif

.PHONY: python-pybase62
python-pybase62:
ifeq (,$(wildcard python-pybase62*.pkg.tar.zst))
	cd python-pybase62; makepkg -rsfc --noconfirm
	@mv python-pybase62/python-pybase62*.pkg.tar.zst .
endif

.PHONY: rockyou
rockyou:
ifeq (,$(wildcard rockyou*.pkg.tar.zst))
	cd rockyou; makepkg -rsfc --noconfirm
	@mv rockyou/rockyou*.pkg.tar.zst .
endif

.PHONY: tealdeer
tealdeer:
ifeq (,$(wildcard tealdeer*.pkg.tar.zst))
	curl https://keybase.io/dbrgn/pgp_keys.asc | gpg --import
	cd tealdeer; makepkg -rsfc --noconfirm
	@mv tealdeer/tealdeer*.pkg.tar.zst .
endif

.PHONY: tor-browser
tor-browser:
ifeq (,$(wildcard tor-browser*.pkg.tar.zst))
	gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
	cd tor-browser; makepkg -rsfc --noconfirm
	@mv tor-browser/tor-browser*.pkg.tar.zst .
endif

.PHONY: ungoogled-chromium
ungoogled-chromium:
ifeq (,$(wildcard ungoogled-chromium*.pkg.tar.zst))
	@echo ungoogled-chromium pulled from chaotic aur
	@$(shell curl -O --output-dir ungoogled-chromium/ https://chaotic.dr460nf1r3.me/repos/chaotic-aur/x86_64/$(shell curl -s https://chaotic.dr460nf1r3.me/repos/chaotic-aur/x86_64/ | grep -o 'ungoogled-chromium-[^"]*' | head -n1))
	@mv ungoogled-chromium/ungoogled-chromium*.pkg.tar.zst .
	#cd ungoogled-chromium; makepkg -rsfc --noconfirm
endif

.PHONY: volatility3
volatility3:
ifeq (,$(wildcard volatility3*.pkg.tar.zst))
	cd volatility3; makepkg -rsfc --noconfirm
	@mv volatility3/volatility3*.pkg.tar.zst .
endif

.PHONY: zoxide
zoxide:
ifeq (,$(wildcard zoxide*.pkg.tar.zst))
	cd zoxide; makepkg -rsfc --noconfirm
	@mv zoxide/zoxide*.pkg.tar.zst .
endif

.PHONY: clean
clean:
	rm -f *.pkg.tar.zst
	rm -f icarus.db
	rm -f icarus.db.tar.gz
	rm -f icarus.files
	rm -f icarus.files.tar.gz
