A BBEdit package to make working with Git easier
===================================================

The great thing about BBEdit packages in BBEdit 10 is the fact that everything is gathered together in one place. This package contains useful tools for BBEdit & Git.

This package is part "code you can find elsewhere on the internet" (the Git Blame and diff language modules, for example), and new stuff that I just wrote.

Installation
============

    $ cd Library/Application\ Support/BBEdit/
    $ mkdir Packages # if it doesn't already exists
    $ cd Packages
    $ git clone https://github.com/rwilcox/git.bbpackage.git

And restart BBEdit.


Useful Features
========================


Handling Git Conflicts
------------------------

When I have a massive set of git merge conflicts I fire up the Unix Worksheet to take care of it. ([See my workflow in a Youtube video](http://www.youtube.com/watch?v=P9rBFROlicY)).

A quick overview of these tools:

  * *Script*: Git -> `conflict_start_of_next`. Use this in a source file to find the next Git conflict to take care of
  * *Script*: Git -> `conflict_git_merge_line_to_bbedit_command`. Use this in the Unix Worksheet to take a `CONFLICT`... blah line and turn it into a BBEdit command so you can open the file and find the conflict. (Remember with the Unix Worksheet that pressing Enter anywhere on the line will execute the current line)
  * *Text Filter*: Git -> `conflict_use_mine` and `conflict_use_theirs`. Because I know _whose_ code to use, but I always forget if I should use the top or the bottom of the diff. Select the entire conflict to use this text filter.

Github Integration
----------------------

Git.bbpackage has (some) support for Github. However, it needs some help to accurately open your Github repository.

Do this:

    git config bbedit.githuburl https://github.com/rwilcox/git.bbpackage

replacing `https://github.com/rwilcox/git.bbpackage` with the URL to your repository on Github.

**Note**: This is **not** the HTTP URL you use to clone the repository, but the front page of the project on github.

Contributing
======================

Please feel free to contribute. However, there is something to keep in mind: BBEdit for some reason doesn't like the uncompiled versions of some Applescripts (for example, the git commit Applescript).

Plus, having BBEdit compile an Applescript every time is much slower than compiling it once.

To avoid this, I've created a ApplescriptSources folder. Modify the .applescript file here, then save a compiled version in the Scripts/git folder.

At some point I'll write a shell script or Makefile to automate this process, or figure out what's wrong...

License
================

Public domain

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
