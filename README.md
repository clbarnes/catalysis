# catalysis

Python tools for interacting with CATMAID projects

This is a slowly increasing toolbox for extracting CATMAID (http://www.catmaid.org) annotations, typically EM reconstructions of neurons and eventually visualizing and doing various kinds of analysis of neuronal morphology, connectivity, and connections between the two. See [Quantitative neuroanatomy for connectomics in Drosophila](https://elifesciences.org/content/5/e12059) for more details of what sort of things will eventually be possible.

Under development, so I suggest installing via `python setup.py develop`.

If you'd rather use Matlab, you will need to install
* matlab-json — To quickly parse JSON files. [Download here](https://github.com/christianpanton/matlab-json).

A similar tool, [nat](https://github.com/jefferis/rcatmaid), has been developed by Greg Jefferis for R.

## Usage

This package was designed with python 3.5.5, and is being updated for python 3.7.

Copy `data/example_project_info.json` somewhere outside of the repo and fill it in with your CATMAID credentials and project information.
Then, set the environment variable CATMAID_CREDENTIALS to the absolute path to that JSON file.

Additionally, set the `CATALYSIS_DATA_ROOT` environment variable with the absolute path to the `data/` directory.
