#! /bin/bash

ASSEMBLY_VERSION_CS="AssemblyVersion.cs"

if [ ! -f "$ASSEMBLY_VERSION_CS" ]; then
    echo "File not found: $ASSEMBLY_VERSION_CS, skipping versioning."
    exit 0
fi

ed "$ASSEMBLY_VERSION_CS" <<EOF 
/AssemblyVersion/
s/\*/$BUILD_NUMBER
w
q
EOF

