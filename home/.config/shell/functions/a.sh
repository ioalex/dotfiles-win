#!/bin/bash

a() {
  if [[ $# -gt 0 ]]; then
    apt "$@"
  else
    apt list -i
  fi
}
