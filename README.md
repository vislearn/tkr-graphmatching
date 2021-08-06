Modifications to Graph Matching Solver By Torresani, Kolmogorov and Rother
==========================================================================

About this repository
---------------------

This repository contains modifications to the dual decomposition based graph
matching solver by Torresani, Kolmogorov and Rother, see

> Lorenzo Torresani, Vladimir Kolmogorov, and Carsten Rother.
> “Feature correspondence via graph matching: Models and global optimization.”
> European conference on computer vision.
> Springer, Berlin, Heidelberg, 2008.

Unfortunately, the license of the original work is very restrictive and
disallows redistribution in any form. Hence, the original code is not included.

Run `./download-and-patch` to obtain the original source distribution and apply
the patches.


Changes
-------

The output of the solver was modified to also output intermediate solutions and
timing information.


License
-------

The patches distributed in this repository are subject to the following license.

Copyright 2021 Stefan Haller

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
