#!/usr/bin/env bash
# Gera dist/humanizer-pt-br.zip para enviar no Claude.ai / Claude Desktop.
# O ZIP tem uma pasta humanizer-pt-br/ com só o que a skill usa.
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf dist && mkdir -p dist/humanizer-pt-br
cp -r SKILL.md referencias LICENSE NOTICE.md dist/humanizer-pt-br/
(cd dist && if command -v zip >/dev/null; then zip -qr humanizer-pt-br.zip humanizer-pt-br; else python -c "import shutil; shutil.make_archive('humanizer-pt-br','zip','.','humanizer-pt-br')"; fi)
rm -rf dist/humanizer-pt-br
echo "dist/humanizer-pt-br.zip"
