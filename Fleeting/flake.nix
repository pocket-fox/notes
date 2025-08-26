{
  description = "C environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, }: 
  let
    system = "x86_64-linux";
    # system = "aarch64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    devShells.${system}.default = pkgs.mkShell {
          packages = with pkgs; [
            gcc11
            clang-tools
          ];

          shellHook = ''
            echo "Using C (11.5) flake"
            # export PATH="$PATH:/home/pocketfox/.cargo/bin"
            # exec fish
          '';
        };
    
  };
}
