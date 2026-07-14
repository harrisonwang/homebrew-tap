import tempfile
import unittest
from pathlib import Path

from render_formula import load_checksums


class RenderFormulaTests(unittest.TestCase):
    def test_checksum_paths_are_keyed_by_asset_name(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "SHA256SUMS.txt"
            path.write_text(
                f"{'0' * 64}  dist/attest-macos-aarch64.tar.gz\n",
                encoding="utf-8",
            )

            self.assertEqual(
                load_checksums(path),
                {"attest-macos-aarch64.tar.gz": "0" * 64},
            )


if __name__ == "__main__":
    unittest.main()
