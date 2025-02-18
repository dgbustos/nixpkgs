{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "dbmate";
  version = "2.1.0";

  src = fetchFromGitHub {
    owner = "amacneil";
    repo = "dbmate";
    rev = "v${version}";
    sha256 = "sha256-yqxFty6nguYpl/7HYuLLUAkKrxD4ICg5bh+StEocL7s=";
  };

  vendorHash = "sha256-NZ2HVFViU8Vzwyo33cueNJwdCT4exZlB7g4WgoWKZBE=";

  doCheck = false;

  meta = with lib; {
    description = "Database migration tool";
    homepage = "https://github.com/amacneil/dbmate";
    license = licenses.mit;
    maintainers = [ maintainers.manveru ];
    platforms = platforms.unix;
  };
}
