from setuptools import setup

setup(
    name="epubbuilder",
    version="0.2.1",
    author="Anders Pearson",
    author_email="anders@columbia.edu",
    url="https://github.com/ccnmtl/epubbuilder",
    description="epub builder library",
    long_description="forked from python-epub-builder",
    install_requires=[
        "lxml",
        "Genshi",
    ],
    scripts=[],
    license="BSD",
    platforms=["any"],
    zip_safe=False,
    packages=['epubbuilder'],
    include_package_data=True,
)
