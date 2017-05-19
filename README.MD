# portable-anaconda

Create a portable [Anaconda](https://www.continuum.io/anaconda-overview)
(Python) runtime for Win32. The runtime can be created from the Anaconda or
Miniconda installer file.

This script requires [7-Zip](http://www.7-zip.org/). See your distribution's
package management guide for installation instructions.

## Usage

Download a 32-bit Anaconda Windows Installer file from
[https://www.continuum.io/downloads](https://www.continuum.io/downloads)

Run the `portable-anaconda.sh` script using `bash`, providing the installer
file path as an argument. For example:

    bash portable-anaconda.sh Anaconda2-4.3.1-Windows-x86.exe

The terminal will display the script's status, and a file
`python-vX.X.X-win32.tar.gz` will be created containing the runtime.

## License

Copyright © `2017` `David RC Dayton`

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the “Software”), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
