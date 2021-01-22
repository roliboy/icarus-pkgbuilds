.PHONY: all
all: tor-browser neovim-dracula repo

.PHONY: repo
repo:
	repo-add local.db.tar.gz tor-browser*pkg.tar.zst
	repo-add local.db.tar.gz neovim-dracula*pkg.tar.zst

.PHONY: tor-browser
tor-browser:
	gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
	cd tor-browser; makepkg -rsfc
	@mv tor-browser/tor-browser*pkg.tar.zst .

.PHONY: neovim-dracula
neovim-dracula:
	cd neovim-dracula; makepkg -rsfc
	@mv neovim-dracula/neovim-dracula*pkg.tar.zst .

.PHONY: clean
clean:
	rm tor-browser*.pkg.tar.zst
	rm neovim-dracula*.pkg.tar.zst