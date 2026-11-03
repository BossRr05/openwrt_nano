#!/bin/sh
# Generate MAGICBOX release metadata during an image build.
# Usage: MAGICBOX_VERSION=dev MAGICBOX_DEVICE=riva ./scripts/gen-release-info.sh [output-file]
set -eu

OUTPUT_FILE="${1:-./magicbox-release}"
MAGICBOX_NAME="${MAGICBOX_NAME:-MAGICBOX OS}"
MAGICBOX_VERSION="${MAGICBOX_VERSION:-development}"
MAGICBOX_DEVICE="${MAGICBOX_DEVICE:-riva}"
MAGICBOX_CREDIT="${MAGICBOX_CREDIT:-Created by / Credit: Rahel}"
MAGICBOX_BUILD_DATE="${MAGICBOX_BUILD_DATE:-$(date -u '+%Y-%m-%dT%H:%M:%SZ')}"

umask 022
mkdir -p "$(dirname "$OUTPUT_FILE")"
cat > "$OUTPUT_FILE" <<EOF
MAGICBOX_NAME="$MAGICBOX_NAME"
MAGICBOX_VERSION="$MAGICBOX_VERSION"
MAGICBOX_DEVICE="$MAGICBOX_DEVICE"
MAGICBOX_CREDIT="$MAGICBOX_CREDIT"
MAGICBOX_BUILD_DATE="$MAGICBOX_BUILD_DATE"
EOF

printf 'Generated %s\n' "$OUTPUT_FILE"
