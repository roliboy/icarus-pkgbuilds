.PHONY: all
all: bottom ciphey chromium-darkreader chromium-ublock-origin dust icarus-theme kwin-krohnkite neovim-dracula otf-nerd-fonts-fira-code procs python-base58 python-base91 python-cipheycore python-cipheydists python-click-spinner python-loguru python-pybase62 tealdeer tor-browser zoxide repo

.PHONY: repo
repo:
	repo-add icarus.db.tar.gz bottom*.pkg.tar.zst
	repo-add icarus.db.tar.gz ciphey*.pkg.tar.zst
	repo-add icarus.db.tar.gz chromium-darkreader*.pkg.tar.zst
	repo-add icarus.db.tar.gz chromium-ublock-origin*.pkg.tar.zst
	repo-add icarus.db.tar.gz dust*.pkg.tar.zst
	repo-add icarus.db.tar.gz icarus-theme*.pkg.tar.zst
	repo-add icarus.db.tar.gz kwin-krohnkite*.pkg.tar.zst
	repo-add icarus.db.tar.gz neovim-dracula*.pkg.tar.zst
	repo-add icarus.db.tar.gz otf-nerd-fonts-fira-code*.pkg.tar.zst
	repo-add icarus.db.tar.gz procs*.pkg.tar.zst
	repo-add icarus.db.tar.gz python-base58*.pkg.tar.zst
	repo-add icarus.db.tar.gz python-base91*.pkg.tar.zst
	repo-add icarus.db.tar.gz python-cipheycore*.pkg.tar.zst
	repo-add icarus.db.tar.gz python-cipheydists*.pkg.tar.zst
	repo-add icarus.db.tar.gz python-click-spinner*.pkg.tar.zst
	repo-add icarus.db.tar.gz python-loguru*.pkg.tar.zst
	repo-add icarus.db.tar.gz python-pybase62*.pkg.tar.zst
	repo-add icarus.db.tar.gz tealdeer*.pkg.tar.zst
	repo-add icarus.db.tar.gz tor-browser*.pkg.tar.zst
	repo-add icarus.db.tar.gz zoxide*.pkg.tar.zst

.PHONY: bottom
bottom:
ifeq (,$(wildcard bottom*.pkg.tar.zst))
	cd bottom; makepkg -rsfc --noconfirm
	@mv bottom/bottom*.pkg.tar.zst .
endif

.PHONY: ciphey
ciphey:
ifeq (,$(wildcard ciphey*.pkg.tar.zst))
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

.PHONY: dust
dust:
ifeq (,$(wildcard dust*.pkg.tar.zst))
	cd dust; makepkg -rsfc --noconfirm
	@mv dust/dust*.pkg.tar.zst .
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

.PHONY: neovim-dracula
neovim-dracula:
ifeq (,$(wildcard neovim-dracula*.pkg.tar.zst))
	cd neovim-dracula; makepkg -rsfc --noconfirm
	@mv neovim-dracula/neovim-dracula*.pkg.tar.zst .
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

.PHONY: zoxide
zoxide:
ifeq (,$(wildcard zoxide*.pkg.tar.zst))
	cd zoxide; makepkg -rsfc --noconfirm
	@mv zoxide/zoxide*.pkg.tar.zst .
endif

.PHONY: clean
clean:
	rm -f bottom*.pkg.tar.zst
	rm -f ciphey*.pkg.tar.zst
	rm -f chromium-darkreader*.pkg.tar.zst
	rm -f chromium-ublock-origin*.pkg.tar.zst
	rm -f dust*.pkg.tar.zst
	rm -f icarus-theme*.pkg.tar.zst
	rm -f kwin-krohnkite*.pkg.tar.zst
	rm -f neovim-dracula*.pkg.tar.zst
	rm -f otf-nerd-fonts-fira-code*.pkg.tar.zst
	rm -f procs*.pkg.tar.zst
	rm -f python-base58*.pkg.tar.zst
	rm -f python-base91*.pkg.tar.zst
	rm -f python-cipheycore*.pkg.tar.zst
	rm -f python-cipheydists*.pkg.tar.zst
	rm -f python-click-spinner*.pkg.tar.zst
	rm -f python-loguru*.pkg.tar.zst
	rm -f python-pybase62*.pkg.tar.zst
	rm -f tealdeer*.pkg.tar.zst
	rm -f tor-browser*.pkg.tar.zst
	rm -f zoxide*.pkg.tar.zst
	rm -f icarus.db
	rm -f icarus.db.tar.gz
	rm -f icarus.files
	rm -f icarus.files.tar.gz
