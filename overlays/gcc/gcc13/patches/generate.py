#!/usr/bin/env nix-shell
#!nix-shell -i python3 -p "python3.withPackages (ps: [ ps.requests ])"

# This script generates the default.nix file for the gcc13 package
# It downloads the diff of each revision and calculates the SRI hash
# for the diff content. The SRI hash is then included in the default.nix
# file for each revision.

import requests
import hashlib
import base64
import re
import sys

def get_sri_hash(revision):
    """Get the SRI hash for the diff of a revision."""
    url = f"https://github.com/gcc-mirror/gcc/commit/{revision}.diff"
    response = requests.get(url)
    response.raise_for_status()
    sha256_hash = hashlib.sha256(response.content).digest()
    return "sha256-" + base64.b64encode(sha256_hash).decode()

def make_patch(revision, comment):
    """Make a patch entry for a revision."""
    sri_hash = get_sri_hash(revision)
    return f"  {{\n    # {comment}\n    rev = \"{revision}\";\n    hash = \"{sri_hash}\";\n  }}\n"

def process_patches(input_file, output_file):
    """Process the patches.txt file and write the default.nix file."""
    revision_pattern = re.compile(r"^([0-9a-fA-F]+): (.+)$")
    output_file.write("[\n")
    for line in input_file:
        line = line.strip()
        match = revision_pattern.match(line)
        if match:
            revision, comment = match.groups()
            try:
                output_file.write(make_patch(revision, comment))
                sys.stderr.write(f"Matched and processed revision: {revision}\n")
            except requests.RequestException as e:
                print(f"Error downloading or hashing revision {revision}: {e}")
        else:
            output_file.write(f"  {line}\n")
            sys.stderr.write(f"No match found for line: {line}\n")
    output_file.write("]\n")

# Open the input and output files outside the function
with open('list', 'r') as inp, open('default.nix', 'w') as out:
    process_patches(inp, out)
