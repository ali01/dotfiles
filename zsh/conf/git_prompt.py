#!/usr/bin/env python3

import re
import subprocess
import sys

def branch_name(ref):
  return ref.strip().replace("HEAD -> ", "")


def main():
  stdout = subprocess.check_output(
      ["git", "show", "-s", "--pretty=tformat:%h %d"]).decode('utf-8')

  commit_hash = re.match(r"[A-Fa-f0-9]+", stdout).group(0)

  branch = None
  match = re.search(r"\((.+)\)", stdout)
  if match:
    refs = match.group(1).split(',')
    for ref in refs:
      if "HEAD -> " in ref:
        branch = ref.replace("HEAD -> ", "")
        break

  out = "%s " % commit_hash
  if branch:
    out = "%s%s " % (out, branch)

  print(out)


if __name__ == "__main__":
  main()
