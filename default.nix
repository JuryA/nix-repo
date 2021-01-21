# { sources ? import ./nix/sources.nix }: # import the sources
# with
# {
#   overlay = _: pkgs:
#     {
#       niv = import sources.niv { }; # use the sources :)
#     };
# };
# { pkgs ? import sources.nixpkgs }:
# with
# { overlays = [ overlay ]; config = { }; }
# (import ./nix { }).ci;

(import ./nix { }).ci
