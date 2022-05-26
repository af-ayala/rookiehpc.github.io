<img src="https://progress-bar.dev/33?title=MPI+docs+porting" height="25"> <img src="https://progress-bar.dev/0?title=OpenMP+docs+porting" height="25">

[Report a missing MPI documentation entry](https://github.com/rookiehpc/rookiehpc.github.io/issues/new?title=Missing+%3Cname+of+the+missing+MPI+documentation+entry%3E.&labels=documentation,missing,mpi&milestone=Add+missing+MPI+documentation&body=-+Please+check+that+this+is+not+a+duplicate+of+another+existing+issue+then+delete+this+message) | [Report a missing OpenMP documentation entry](https://github.com/rookiehpc/rookiehpc.github.io/issues/new?title=Missing+%3Cname+of+the+missing+OpenMP+documentation+entry%3E.&labels=documentation,missing,openmp&milestone=Add+missing+OpenMP+documentation&body=-+Please+check+that+this+is+not+a+duplicate+of+another+existing+issue+then+delete+this+message)

# Welcome to the RookieHPC website v2! :D #
To newcomers, a quick introduction: the RookieHPC website covers major technologies in High-Performance Computing (HPC), providing documentation accompanied with examples, as well as exercises and sometimes tools.

## I) Why a version 2? ##

For reference:
- Current RookieHPC website (a.k.a v1): https://www.rookiehpc.com
- [Github Pages](https://pages.github.com) version of RookieHPC website (a.k.a v2): https://rookiehpc.github.io (work in progress)

Although the two websites are visually identical, the v2 is much better at accommodating contribution and collaboration since it has access to the full panel of tools from Github. A quick comparison:

|Current RookieHPC website version | RookieHPC website v2
|-|-
|<ul><li>[Contact form](https://rookiehpc.com/contact.php)</li></ul>|<ul><li>[Github issues](https://github.com/rookiehpc/rookiehpc.github.io/issues)</li><li>[Wiki](https://github.com/rookiehpc/rookiehpc.github.io/wiki)</li><li>[Pull requests](https://github.com/rookiehpc/rookiehpc.github.io/pulls)</li><li>[Projects](https://github.com/rookiehpc/rookiehpc.github.io/projects?type=beta)</li><li>[Milestones](https://github.com/rookiehpc/rookiehpc.github.io/milestones)</li></ul>

At the time of writing, the content is still being ported from the current RookieHPC website to its version 2. When this will be complete, the URL https://www.rookiehpc.com will point to the Github Pages version in a seamless transition. Only a single version of the website will remain, no more v1/v2 distinction :)

## II) Alright, how can I contribute then? ##

To come to that, a short introduction on the website structure is needed. Each page you see on the [Github Pages website](https://rookiehpc.github.io) is built from a `data.json` file containing the page content. Anything related to layout or formatting is handled from the script `/rk.js`. Any modification you will want to bring to a page's content will therefore come down to modifying the corresponding `data.json` file. Contributing then becomes as simple as submitting a pull request for that file and that's it! :D

### II.2) I see a page I want to modify, how can I do it? ###
<img src="https://github.com/rookiehpc/rookiehpc.github.io/blob/main/images/EditThisPageLink.png" width="300">

At the bottom of every page you will see an "Edit this page" link, clicking on it will open the page editor.

<img src="https://github.com/rookiehpc/rookiehpc.github.io/blob/main/images/LivePreview.png" width="700">

Modifying the JSON record on the left handside instantly updates the preview on the right handside. This allows to quickly modify the content of a page and see what it looks like. Once you are happy with the edits, submit a pull request for the corresponding `data.json` file with the new JSON record you have just written! :)

### II.3) How do I know the JSON attributes that I must set or modify? ###

In the [Wiki](https://github.com/rookiehpc/rookiehpc.github.io/wiki/JSON-structure) of this repository you will find the explanation, along with examples, of the JSON structure used behind the scenes.

### II.4) How do I know the location of the corresponding original data.json file? ###

If you are using the page editor on an existing page, the location of the corresponding `data.json` file is displayed in the blue ruban at the bottom.

### II.5) What if I want to create a new page, such as a new documentation entry for instance? ###

Although not all categories below are implemented yet, this is the structure that will likely be followed for when you create a new `data.json` file:

Page | Repository location | Example
-|-|-
Homepage | `/data.json` | -
Privacy policy | `/privacy_policy/data.json` | -
Technology "T" homepage | `/T/data.json` | `/mpi/data.json`
Technology "T" about page | `/T/about/data.json` | `/mpi/about/data.json`
Technology "T" documentation entry "E" | `/T/docs/E/data.json` | `/mpi/docs/mpi_comm_size/data.json`
Technology "T" tool entry "E" | `/T/tools/E/data.json` | `/mpi/tools/my_super_tool/data.json`
Technology "T" exercise entry "E" | `/T/exercises/E/data.json` | `/mpi/tools/my_super_exercise/data.json`

The example codes are stored verbatim in their corresponding programming language file format. For instance, the example in `C` for `MPI_Comm_size` is located at `/mpi/docs/mpi_comm_size/example_1.c`. The `FORTRAN-90` have the extension `.f90` while their `FORTRAN-2008` counterpart have `.f08`.
