# [Theresa's Blog](https://blog.theresa.ai)

Based on [Emanote](https://github.com/srid/emanote), using the [Emanote Template](https://github.com/srid/emanote-template)

## Running using Nix

To start the Emanote live server using Nix:

```sh
# If you using VSCode, you can also: Ctrl+Shift+B
nix run
```

To update Emanote version in flake.nix:

```sh
nix flake lock --update-input emanote
```

To build the static website via Nix:

```sh
nix build -o ./result
# Then test it:
nix run nixpkgs#nodePackages.live-server -- ./result
```
