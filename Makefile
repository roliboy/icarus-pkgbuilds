.PHONY: all
all: chromium-darkreader chromium-ublock-origin icarus-theme kwin-krohnkite neovim-dracula otf-nerd-fonts-fira-code tor-browser repo

.PHONY: repo
repo:
	repo-add local.db.tar.gz chromium-darkreader*pkg.tar.zst
	repo-add local.db.tar.gz chromium-ublock-origin*pkg.tar.zst
	repo-add local.db.tar.gz icarus-theme*pkg.tar.zst
	repo-add local.db.tar.gz kwin-krohnkite*.pkg.tar.zst
	repo-add local.db.tar.gz neovim-dracula*pkg.tar.zst
	repo-add local.db.tar.gz otf-nerd-fonts-fira-code*.pkg.tar.zst
	repo-add local.db.tar.gz tor-browser*pkg.tar.zst


.PHONY: chromium-darkreader
chromium-darkreader:
ifeq (,$(wildcard chromium-darkreader*pkg.tar.zst))
	cd chromium-darkreader; makepkg -rsfc --noconfirm
	@mv chromium-darkreader/chromium-darkreader*pkg.tar.zst .
endif

.PHONY: chromium-ublock-origin
chromium-ublock-origin:
ifeq (,$(wildcard chromium-ublock-origin*pkg.tar.zst))
	cd chromium-ublock-origin; makepkg -rsfc --noconfirm
	@mv chromium-ublock-origin/chromium-ublock-origin*pkg.tar.zst .
endif

.PHONY: icarus-theme
icarus-theme:
ifeq (,$(wildcard icarus-theme*pkg.tar.zst))
	cd icarus-theme; makepkg -rsfc --noconfirm
	@mv icarus-theme/icarus-theme*pkg.tar.zst .
endif

.PHONY: kwin-krohnkite
kwin-krohnkite:
ifeq (,$(wildcard kwin-krohnkite*pkg.tar.zst))
	cd kwin-krohnkite; makepkg -rsfc --noconfirm
	@mv kwin-krohnkite/kwin-krohnkite*pkg.tar.zst .
endif

.PHONY: neovim-dracula
neovim-dracula:
ifeq (,$(wildcard neovim-dracula*pkg.tar.zst))
	cd neovim-dracula; makepkg -rsfc --noconfirm
	@mv neovim-dracula/neovim-dracula*pkg.tar.zst .
endif

.PHONY: otf-nerd-fonts-fira-code
otf-nerd-fonts-fira-code:
ifeq (,$(wildcard otf-nerd-fonts-fira-code*pkg.tar.zst))
	cd otf-nerd-fonts-fira-code; makepkg -rsfc --noconfirm
	@mv otf-nerd-fonts-fira-code/otf-nerd-fonts-fira-code*pkg.tar.zst .
endif

.PHONY: tor-browser
tor-browser:
ifeq (,$(wildcard tor-browser*pkg.tar.zst))
	gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
	cd tor-browser; makepkg -rsfc --noconfirm
	@mv tor-browser/tor-browser*pkg.tar.zst .
endif

.PHONY: clean
clean:
	rm -f chromium-darkreader*pkg.tar.zst
	rm -f chromium-ublock-origin*pkg.tar.zst
	rm -f icarus-theme*pkg.tar.zst
	rm -f kwin-krohnkite*.pkg.tar.zst
	rm -f neovim-dracula*.pkg.tar.zst
	rm -f otf-nerd-fonts-fira-code*.pkg.tar.zst
	rm -f tor-browser*.pkg.tar.zst
	rm -f local.db
	rm -f local.db.tar.gz
	rm -f local.files
	rm -f local.files.tar.gz
