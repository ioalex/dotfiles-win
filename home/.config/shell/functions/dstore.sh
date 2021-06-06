#!/bin/bash

# Delete all .DS_Store in current directory including child directories
dstore() {
  find . -name '.DS_Store' -delete;
  echo "\u2713: .DS_Store files have been deleted!"
}
