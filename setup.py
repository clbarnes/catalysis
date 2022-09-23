from setuptools import setup
from os import path
from io import open

here = path.abspath(path.dirname(__file__))

with open(path.join(here, "README.md"), encoding="utf-8") as f:
    long_description = f.read()


def parse_requirements(extra=None):
    if extra is None:
        suffix = ""
    else:
        suffix = "-" + extra
    with open(path.join(here, "requirements" + suffix + ".txt")) as f:
        return f.read().splitlines()


install_requires = parse_requirements()
extras_require = {n: parse_requirements(n) for n in ["dev", "notebooks"]}

setup(
    name="catalysis",
    version="0.1.0",
    description="Python tools for interacting with connectomics data from CATMAID",
    long_description=long_description,
    url="https://github.com/ceesem/catalysis",
    author="Casey Schneider-Mizell",
    author_email="caseysm@gmail.com",
    packages=["catalysis"],
    install_requires=install_requires,
    extras_require=extras_require,
    include_package_data=True,
    data_files=[
        (
            "data",
            [
                "data/Brain_Lineage_Landmarks_EMtoEM_ProjectSpace.csv",
                "data/example_project_info.json",
                "data/smat_jefferis.csv",
            ],
        )
    ],
)
