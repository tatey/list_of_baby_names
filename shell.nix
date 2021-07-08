let
  sources = import ./nix/sources.nix;
  nixpkgs = import sources.nixpkgs { };

  ruby = nixpkgs.ruby_3_0;

  bundler = nixpkgs.bundler.override { ruby = ruby; };

  mkBundlerAppDevShell =
    nixpkgs.callPackage (import sources.bundler-app-dev-shell) { };
in mkBundlerAppDevShell {
  buildInputs = [ ruby bundler nixpkgs.heroku nixpkgs.niv ];
}
