.PHONY: all
all: chromium-darkreader chromium-ublock-origin kwin-krohnkite neovim-dracula otf-nerd-fonts-fira-code tor-browser repo

.PHONY: repo
repo:
	repo-add local.db.tar.gz chromium-darkreader*pkg.tar.zst
	repo-add local.db.tar.gz chromium-ublock-origin*pkg.tar.zst
	repo-add local.db.tar.gz kwin-krohnkite*.pkg.tar.zst
	repo-add local.db.tar.gz neovim-dracula*pkg.tar.zst
	repo-add local.db.tar.gz otf-nerd-fonts-fira-code*.pkg.tar.zst
	repo-add local.db.tar.gz tor-browser*pkg.tar.zst


.PHONY: chromium-darkreader
chromium-darkreader:
	cd chromium-darkreader; makepkg -rsfc
	@mv chromium-darkreader/chromium-darkreader*pkg.tar.zst .

.PHONY: chromium-ublock-origin
chromium-ublock-origin:
	cd chromium-ublock-origin; makepkg -rsfc
	@mv chromium-ublock-origin/chromium-ublock-origin*pkg.tar.zst .

.PHONY: kwin-krohnkite
kwin-krohnkite:
	cd kwin-krohnkite; makepkg -rsfc
	@mv kwin-krohnkite/kwin-krohnkite*pkg.tar.zst .

.PHONY: neovim-dracula
neovim-dracula:
	cd neovim-dracula; makepkg -rsfc
	@mv neovim-dracula/neovim-dracula*pkg.tar.zst .

.PHONY: otf-nerd-fonts-fira-code
otf-nerd-fonts-fira-code:
	cd otf-nerd-fonts-fira-code; makepkg -rsfc
	@mv otf-nerd-fonts-fira-code/otf-nerd-fonts-fira-code*pkg.tar.zst .

.PHONY: tor-browser
tor-browser:
	gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
	cd tor-browser; makepkg -rsfc
	@mv tor-browser/tor-browser*pkg.tar.zst .

.PHONY: clean
clean:
	rm chromium-darkreader*pkg.tar.zst
	rm chromium-ublock-origin*pkg.tar.zst
	rm kwin-krohnkite*.pkg.tar.zst
	rm neovim-dracula*.pkg.tar.zst
	rm otf-nerd-fonts-fira-code*.pkg.tar.zst
	rm tor-browser*.pkg.tar.zst
