{
  cmake,
  fetchFromGitHub,
  lib,
  stdenv,
}:

stdenv.mkDerivation rec {
  pname = "quill-log";
  version = "8.0.0";

  src = fetchFromGitHub {
    owner = "odygrd";
    repo = "quill";
    rev = "v${version}";
    hash = "sha256-vwi5TU9yIdMgVXwPrhGcmmZtpq57DoVok38NY+hKlkU=";
  };

  nativeBuildInputs = [ cmake ];

  meta = with lib; {
    homepage = "https://github.com/odygrd/quill";
    changelog = "https://github.com/odygrd/quill/blob/master/CHANGELOG.md";
    downloadPage = "https://github.com/odygrd/quill";
    description = "Asynchronous Low Latency C++17 Logging Library";
    platforms = platforms.all;
    license = licenses.mit;
    maintainers = [ maintainers.odygrd ];
  };
}
