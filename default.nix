{ sources ? import ./sources.nix }: # import the sources
with
{
  overlay = _:
    {
      niv = import sources.niv { }; # use the sources :)
    };
};
import sources.nixpkgs                  # and use them again!
{ overlays = [ overlay ]; config = { }; }

  (import ./nix { }).ci
