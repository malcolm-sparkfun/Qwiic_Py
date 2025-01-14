#! /bin/bash

# The MIT License (MIT)
#
# Copyright (c) 2021 Scott Shawcroft for Adafruit Industries
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# This script builds the bundle

set -e

# Below way extracted comma-separated list of package folder prefixes automatically, but it's not working as expected
# Also we know explicitly what package folder prefixes are used in the our libraries. Keeping this here in case we end up 
# using it in future. 
# P=$(
# ls -RUx |
# gawk -F '\n' '{ match($1, /(drivers|helpers)\/(.+)\/(.+)\:/, arr) ; if (length(arr[0]) > 0 && match(arr[3], arr[2]) > 0) printf "%s, ", arr[3] }' |
# gawk '{ trimmed = substr($0, 1, length($0) - 2) ; print "\"" trimmed "\"" }'
# )

circuitpython-build-bundles --filename_prefix qwiic-py --library_location qwiic/circuitpython --library_depth 2 --package_folder_prefix "Qwiic, qwiic, Pi" 
